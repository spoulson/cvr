#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Charles
$IMPORT_CMD --delete voter_reg cvr_2022_9_raw "$IMPORT_PATH/09_Charles/09GG22_Prov_CVR_SBE.csv"
$IMPORT_CMD voter_reg cvr_2022_9_raw "$IMPORT_PATH/09_Charles/09GG22_Prov_CVR_SBE - 1.csv"
