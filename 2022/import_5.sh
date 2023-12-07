#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Calvert
$IMPORT_CMD --delete voter_reg cvr_2022_5_raw "$IMPORT_PATH/05_Calvert/05GG22_Prov_CVR_SBE.csv"
