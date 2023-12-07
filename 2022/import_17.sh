#!/bin/sh
IMPORT_PATH="./2022GG CVRs"
IMPORT_CMD="./import_csv.py --host $MYSQL_HOST --port $MYSQL_PORT --user $MYSQL_USER --password $MYSQL_PASSWORD"

# Prince George's
$IMPORT_CMD --delete voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 1.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 2.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 3.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 4.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 5.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 6.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 7.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 8.csv"
$IMPORT_CMD voter_reg cvr_2022_17_raw "$IMPORT_PATH/17_Prince George's/17gg22_prov_cvr_sbe - 9.csv"
