#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/SCRIPT_NAME-$DATE.log

#this function should validate  the previous command and inform user it is sucess or failure
validate(){
    #$1--it will receive the orgument1
    if [ $1 -ne 0 ]
    then
    echo -e "$2 ... $R FAILURE $N"
    exit1
    else
    echo -e "$2 ... $G SUCESS $N"
    fi
}

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "error:please run this script with root access"
exit 1
else
echo "you are root user"
fi