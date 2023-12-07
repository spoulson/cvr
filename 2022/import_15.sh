#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Kent
$IMPORT_CMD --delete voter_reg cvr_2022_15_raw "$IMPORT_PATH/15_Kent/15GG22_MIB2_CVR_11-18-2022.csv"
