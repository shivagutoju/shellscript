#!/bin/bash
LOGFILE=/tmp/$script_name-$DATE.log
DATE=$(date +%F)
VAR1=$1
VAR2=$2
script_name=$0
echo "date:$DATE"
echo "VARIABLE 1:$VAR2"
echo "variable 1:$@"
echo "number of variables:$#"
