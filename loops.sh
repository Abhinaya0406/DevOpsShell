#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M)
LOG_FILE="/tmp/$0_$TIMESTAMP.log"

if [ $ID -ne 0 ]
	then
		echo "Please try with root access"
		exit 1
	else
		echo "Root User"
fi


VALIDATE() {
	echo "validating"
if [ $1 -ne 0 ]
	then
		echo "SUCCESS $2" &>>$LOG_FILE
	else
		echo "FAILED $2" &>>$LOG_FILE
fi
}

for PACKAGE in $@
do
	yum list installed $PACKAGE &>>$LOG_FILE
	
		if [ $? -ne 0 ]
			then
				yum install $PACKAGE -y &>>$LOG_FILE
				VALIDATE $? $PACKAGE &>>$LOG_FILE
		else
				echo "already installed--skipping $PACKAGE"
fi
done





