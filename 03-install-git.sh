#!/bin/bash
#our programme is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "error: Please run this script with root access"
else
echo "you are root user"
fi
yum install git -y