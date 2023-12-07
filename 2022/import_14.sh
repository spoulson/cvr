#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Harford
$IMPORT_CMD --delete voter_reg cvr_2022_14_raw "$IMPORT_PATH/14_Howard/14GG22_Prov_CVR_SBE.csv"
$IMPORT_CMD voter_reg cvr_2022_14_raw "$IMPORT_PATH/14_Howard/14GG22_Prov_CVR_SBE - 1.csv"
$IMPORT_CMD voter_reg cvr_2022_14_raw "$IMPORT_PATH/14_Howard/14GG22_Prov_CVR_SBE - 2.csv"
