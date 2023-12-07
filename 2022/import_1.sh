#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Allegany
$IMPORT_CMD --delete voter_reg cvr_2022_1_raw "$IMPORT_PATH/01_Allegany/01GG22_Prov_CVR_SBE.csv"
