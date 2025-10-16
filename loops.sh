!#/bin/bash

ID=$(id -u)
TIMESTAMP=date +%F-%H-%M
LOG_FILE="/tmp/$0_$TIMESTAMP.log"

if [ $ID -ne 0 ]
then
echo "Please try with root access"
exit 1
else
echo "Root User"
fi


VALIDATE(){
if [ $1 -ne 0 ]
then
echo "Already Installaed $2">$LOG_FILE
else
echo "Installing $2">$LOG_FILE
fi
}

for each $PACKAGE in $@

echo $PACKAGE

yum install $PACKAGE -y>$LOG_FILE
VALIDATE $? $PACKAGE>$LOG_FILE
