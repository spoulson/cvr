#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Baltimore City
$IMPORT_CMD --delete voter_reg cvr_2022_3_raw "$IMPORT_PATH/03_Baltimore City/03GG22_Prov_CVR_SBE.csv"
$IMPORT_CMD voter_reg cvr_2022_3_raw "$IMPORT_PATH/03_Baltimore City/03GG22_Prov_CVR_SBE - 1.csv"
$IMPORT_CMD voter_reg cvr_2022_3_raw "$IMPORT_PATH/03_Baltimore City/03GG22_Prov_CVR_SBE - 2.csv"
$IMPORT_CMD voter_reg cvr_2022_3_raw "$IMPORT_PATH/03_Baltimore City/03GG22_Prov_CVR_SBE - 3.csv"
$IMPORT_CMD voter_reg cvr_2022_3_raw "$IMPORT_PATH/03_Baltimore City/03GG22_Prov_CVR_SBE - 4.csv"
