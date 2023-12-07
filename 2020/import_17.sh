#!/bin/sh
IMPORT_PATH="./2020PG CVRs"
MYSQL_CMD="mysql -h${MYSQL_HOST} -P${MYSQL_PORT} -u${MYSQL_USER} -p${MYSQL_PASSWORD} -D${MYSQL_DATABASE} --protocol=tcp"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"
TABLE="cvr_2020_17_raw"

# Prince George's
$MYSQL_CMD < ${TABLE}.sql || exit 1
$IMPORT_CMD --delete cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE - 1.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE - 2.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE - 3.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE - 4.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE - 5.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE - 6.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE - 7.csv"
$IMPORT_CMD cvr2020 $TABLE "$IMPORT_PATH/17_Prince George's/17PG20_Prov_CVR_SBE - 8.csv"
