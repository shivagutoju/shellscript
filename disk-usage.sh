#!/bin/bash
#colours
#validations
#redirections

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log


R="\e[31m"
G="\e[32m"
N="\e[33m"

