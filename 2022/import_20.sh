#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Prince George's
$IMPORT_CMD --delete voter_reg cvr_2022_20_raw "$IMPORT_PATH/20_Somerset/20GG22_Prov_CVR_SBE.csv"
