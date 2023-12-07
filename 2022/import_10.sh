#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Dorchester
$IMPORT_CMD --delete voter_reg cvr_2022_10_raw "$IMPORT_PATH/10_Dorchester/10GG22_Prov_CVR_SBE.csv"
