#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Frederick
$IMPORT_CMD --delete voter_reg cvr_2022_11_raw "$IMPORT_PATH/11_Frederick/11GG22_PROV_CVR_SBE.csv"
$IMPORT_CMD voter_reg cvr_2022_11_raw "$IMPORT_PATH/11_Frederick/11GG22_PROV_CVR_SBE - 1.csv"
$IMPORT_CMD voter_reg cvr_2022_11_raw "$IMPORT_PATH/11_Frederick/11GG22_PROV_CVR_SBE - 2.csv"
