#!/bin/bash
#our programme is to install mysql
DATE=$(date +%F-%H-%M-%S)
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "error: Please run this script with root access"
exit 1
else
echo "you are root user"
fi
yum install mysql -y