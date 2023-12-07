#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Prince George's
$IMPORT_CMD --delete voter_reg cvr_2022_19_raw "$IMPORT_PATH/19_Saint Mary's/19GG22_PROV_CVR_SBE.csv"
