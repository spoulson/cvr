#!/usr/bin/env python3
import argparse
import csv
import pymysql

def parse_args():
    parser = argparse.ArgumentParser(prog="Import CSV to MySQL table")
    parser.add_argument("--host", required=True)
    parser.add_argument("--port", default=3306, type=int)
    parser.add_argument("--user")
    parser.add_argument("--password")
    parser.add_argument("--delete", action="store_true")
    parser.add_argument("database")
    parser.add_argument("table")
    parser.add_argument("infile")
    return parser.parse_args()


def test_connection(db):
    cur = db.cursor()
    try:
        cur.execute("SELECT 1")
        value = cur.fetchone()[0]
        return value == 1
    finally:
        cur.close()


def delete_table(db, table):
    cur = db.cursor()
    try:
        print("Deleting table rows...")
        cur.execute(f"DELETE FROM {table}")
        db.commit()
    finally:
        cur.close()


def import_csv(db, table, infile):
    with open(infile, 'r') as f:
        reader = csv.reader(f)
        columns = next(reader)
        values_ph = ','.join(['%s'] * len(columns))
        insert_sql = f"INSERT INTO {args.table} VALUES ({values_ph})"
        row_count = 0
        print(f"Columns in CSV: {len(columns)}")
        print("Importing into table...")
        cur = db.cursor()
        try:
            for row in reader:
                if len(row) != len(columns):
                    raise RuntimeError(f"Column count mismatch: {len(row)}, expected {len(columns)}")

                cur.execute(insert_sql, row)
                db.commit()
                row_count = row_count+1
        finally:
            cur.close()

        print(f"Rows inserted: {row_count}")


#
# Entrypoint
#
args = parse_args()

try:
    db = pymysql.connect(host=args.host, port=args.port, database=args.database, user=args.user, password=args.password)
    if not test_connection(db):
        print("Database connection FAIL")
        exit

    print(f"Target table: {args.table}")

    if args.delete:
        delete_table(db, args.table)

    import_csv(db, args.table, args.infile)
finally:
    db.close()
