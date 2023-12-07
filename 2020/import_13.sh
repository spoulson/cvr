#!/bin/sh
IMPORT_PATH="./2020PG CVRs"
MYSQL_CMD="mysql -h${MYSQL_HOST} -P${MYSQL_PORT} -u${MYSQL_USER} -p${MYSQL_PASSWORD} -D${MYSQL_DATABASE} --protocol=tcp"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"
TABLE="cvr_2020_13_raw"

# Harford
$MYSQL_CMD < ${TABLE}.sql || exit 1
$IMPORT_CMD --delete cvr2020 $TABLE "$IMPORT_PATH/13_Harford/13PG20_MIB2_CVR_11-13-2020.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/13_Harford/13PG20_MIB2_CVR_11-13-2020 - 1.csv"
