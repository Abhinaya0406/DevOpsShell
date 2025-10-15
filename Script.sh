#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M)
ID=$(id -u)
LOG_FILE="/log/$0-$TIMESTAMP.log"/

if [ $ID -ne 0 ]
then 
echo "not root user - Please try with root user"
exit 1
else 
echo "Root User"
fi


VALIDATE(){
if [ $1 -ne 0 ]
then
echo "ERROR $2 Installing"
else 
echo "success $2"
fi
}

yum install mysql -y>>LOG_FILE
VALIDATE $? "MySQL"

yum install git -y>>LOG_FILE
VALIDATE $? "GIT"



