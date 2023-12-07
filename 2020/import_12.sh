#!/bin/sh
IMPORT_PATH="./2020PG CVRs"
MYSQL_CMD="mysql -h${MYSQL_HOST} -P${MYSQL_PORT} -u${MYSQL_USER} -p${MYSQL_PASSWORD} -D${MYSQL_DATABASE} --protocol=tcp"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"
TABLE="cvr_2020_12_raw"

# Garrett
$MYSQL_CMD < ${TABLE}.sql || exit 1
$IMPORT_CMD --delete cvr2020 $TABLE "$IMPORT_PATH/12_Garrett/12PG20_Prov_CVR_SBE.csv"
