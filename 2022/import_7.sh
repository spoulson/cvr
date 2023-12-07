#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Carroll
$IMPORT_CMD --delete voter_reg cvr_2022_7_raw "$IMPORT_PATH/07_Carroll/07GG22_Prov_CVR_11-18-2022 - SBE.csv"
