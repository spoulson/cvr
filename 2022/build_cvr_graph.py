#!/bin/env python3
# Usage: python3 build_cvr_graph.py [-f]
#  -f  Force reload of existing county-race graphs.

import argparse
from itertools import groupby
import os
import pymysql

mysql_host=os.getenv("MYSQL_HOST")
mysql_port=int(os.getenv("MYSQL_PORT"))
mysql_db=os.getenv("MYSQL_DATABASE")
mysql_user=os.getenv("MYSQL_USER")
mysql_password=os.getenv("MYSQL_PASSWORD")


def parse_args():
    parser = argparse.ArgumentParser(prog="build_cvr_graph")
    parser.add_argument("-f", action="store_true")
    parser.add_argument("--race", metavar="RACE")
    parser.add_argument("county_id", metavar="COUNTY_ID", type=int)
    return parser.parse_args()


def test_connection(db):
    cur = db.cursor()
    try:
        cur.execute("SELECT 1")
        value = cur.fetchone()[0]
        return value == 1
    finally:
        cur.close()


def clear_graph_race(db, county_id, races):
    cur = db.cursor()
    try:
        for race in races:
            print(f"Clearing CVR graph data for race {race[1]} ({race[2]})...")
            cur.execute("DELETE FROM cvr_2022_graph WHERE county_id=%s AND race_id=%s", (county_id, race[0]))
            db.commit()
    finally:
        cur.close()


# Returns gropuings from groupby() on race_id containing tuples:
# [id, name, raw_column]
def get_races(db, county_id, race_name):
    cur = db.cursor()
    try:
        if race_name:
            cur.execute("SELECT race.id, race.name, county_race.raw_column FROM race INNER JOIN county_race ON race.id = county_race.race_id WHERE county_race.county_id=%s AND race.name=%s ORDER BY race.id, county_race.raw_column", (county_id, race_name))
        else:
            cur.execute("SELECT race.id, race.name, county_race.raw_column FROM race INNER JOIN county_race ON race.id = county_race.race_id WHERE county_race.county_id=%s ORDER BY race.id, county_race.raw_column", (county_id))

        races = cur.fetchall()
        print(f"Found {len(races)} races")
        return groupby(races, lambda x: x[0])
    finally:
        cur.close()


def has_data(db, county_id, race_id):
    cur = db.cursor()
    try:
        cur.execute("SELECT COUNT(1) FROM cvr_2022_graph WHERE county_id=%s AND race_id=%s", (county_id, race_id))

        for row in cur:
            return row[0] > 0

        raise RuntimeError("Query did not return a row")
    finally:
        cur.close()


def build_race(db, county_id, races):
    race_id = races[0][0]
    cur = db.cursor()
    try:
        for race in races:
            print(f"Building CVR graph: {race[1]} ({race[2]})...")
            cur.execute(f"INSERT INTO cvr_2022_graph (county_id, race_id, record, candidate) SELECT %s, %s, record, {race[2]} FROM cvr_2022_{county_id}_raw AS c1 WHERE {race[2]} != '' ORDER BY record", (county_id, race_id))
            db.commit()

        totals = {}
        cur.execute("SELECT record, candidate FROM cvr_2022_graph WHERE county_id=%s AND race_id=%s ORDER BY record", (county_id, race_id))
        rows = cur.fetchall()
        vcount = 0
        for row in rows:
            record = row[0]
            candidate = row[1]
            vcount = vcount+1
            ccount = 1
            if candidate in totals:
                ccount = totals[candidate]+1
            totals[candidate] = ccount

            cur.execute("UPDATE cvr_2022_graph SET vcount=%s, ccount=%s WHERE county_id=%s AND race_id=%s AND candidate=%s AND record=%s", (vcount, ccount, county_id, race_id, candidate, record))
            db.commit()
    finally:
        cur.close()


def build_race_stats(db, county_id):
    print("Building race stats...")
    cur = db.cursor()
    try:
        cur.execute("DELETE FROM race_stats WHERE county_id=%s", (county_id))
        cur.execute("INSERT INTO race_stats SELECT county_id, race_id, MAX(vcount) FROM cvr_2022_graph WHERE county_id=%s AND vcount IS NOT NULL GROUP BY county_id, race_id", (county_id))
        db.commit()
    finally:
        cur.close()


def print_summary(db, county_id):
    print(f"Election summary for county_id {county_id}:")
    cur = db.cursor()
    try:
        cur.execute(f"SELECT DISTINCT race, candidate FROM cvr_2022_{county_id}_graph ORDER BY race, candidate")
        for row in cur:
            race, candidate = row
            print(f"race: {race}, candidate: {candidate}")
    finally:
        cur.close()


#
# Entrypoint
#
args = parse_args()

try:
    db = pymysql.connect(host=mysql_host, port=mysql_port, database=mysql_db, user=mysql_user, password=mysql_password)
    if not test_connection(db):
        print("Database connection FAIL")
        exit

    print(f"County id: {args.county_id}")

    race_groups = get_races(db, args.county_id, args.race)
    for race_id, group in race_groups:
        races = list(group)
        race_id = races[0][0]
        if args.f:
            clear_graph_race(db, args.county_id, races)
        if not has_data(db, args.county_id, race_id):
            build_race(db, args.county_id, races)
        else:
            for race in races:
                print(f"CVR graph already built: {race[1]} ({race[2]})")
    build_race_stats(db, args.county_id)
finally:
    db.close()
