#!/bin/sh
IMPORT_PATH="./2020PG CVRs"
MYSQL_CMD="mysql -h${MYSQL_HOST} -P${MYSQL_PORT} -u${MYSQL_USER} -p${MYSQL_PASSWORD} -D${MYSQL_DATABASE} --protocol=tcp"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"
TABLE="cvr_2020_16_raw"

# Montgomery
$MYSQL_CMD < ${TABLE}.sql || exit 1
$IMPORT_CMD --delete cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 1.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 2.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 3.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 4.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 5.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 6.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 7.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 8.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 9.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/16_Montgomery/PG20withProv - 10.csv"
