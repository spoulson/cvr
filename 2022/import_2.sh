#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Anne Arundel
$IMPORT_CMD --delete voter_reg cvr_2022_2_raw "$IMPORT_PATH/02_Anne Arundel/02GG22_Prov_CVR_SBE.csv"
$IMPORT_CMD voter_reg cvr_2022_2_raw "$IMPORT_PATH/02_Anne Arundel/02GG22_Prov_CVR_SBE - 1.csv"
$IMPORT_CMD voter_reg cvr_2022_2_raw "$IMPORT_PATH/02_Anne Arundel/02GG22_Prov_CVR_SBE - 2.csv"
$IMPORT_CMD voter_reg cvr_2022_2_raw "$IMPORT_PATH/02_Anne Arundel/02GG22_Prov_CVR_SBE - 3.csv"
$IMPORT_CMD voter_reg cvr_2022_2_raw "$IMPORT_PATH/02_Anne Arundel/02GG22_Prov_CVR_SBE - 4.csv"
