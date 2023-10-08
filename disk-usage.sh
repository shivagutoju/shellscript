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

DISK_USAGE=$(df -HT | grep -vE 'tmpfs|Filesystem')

DISK_USAGE_THRESHOLD=1
message=
#IFS=internal field seperator is space.

while IFS= read line
do
#this command line give you usage in number format for comparison

usage=$(echo $line | awk '{print $6}' | cut -d % -f1)
#this command will give us parition
partition=$echo $line | awk '{print $1}
# now you need to check wheter it is more than it is threshold or not
if [ $usage -gt $DISK_USAGE_THRESHOLD ];
then
#if you will give = then append will apply, second time also function will work
messege+="HIGH DISK USAGE ON $partition: $usage"
fi
done <<< $DISK_USAGE

echo "message: $message"