#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Cecil
$IMPORT_CMD --delete voter_reg cvr_2022_8_raw "$IMPORT_PATH/08_Cecil/08GG22_Prov_CVR_SBE.csv"
