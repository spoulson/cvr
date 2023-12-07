#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Frederick
$IMPORT_CMD --delete voter_reg cvr_2022_12_raw "$IMPORT_PATH/12_Garrett/12GG22_Prov_CVR_SBE.csv"
