#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Baltimore
$IMPORT_CMD --delete voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE.csv"
$IMPORT_CMD voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE - 1.csv"
$IMPORT_CMD voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE - 2.csv"
$IMPORT_CMD voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE - 3.csv"
$IMPORT_CMD voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE - 4.csv"
$IMPORT_CMD voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE - 5.csv"
$IMPORT_CMD voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE - 6.csv"
$IMPORT_CMD voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE - 7.csv"
$IMPORT_CMD voter_reg cvr_2022_4_raw "$IMPORT_PATH/04_Baltimore/04GG22_Prov_CVR_SBE - 8.csv"
