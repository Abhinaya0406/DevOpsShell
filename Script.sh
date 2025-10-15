#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
echo "not root user - Please try with root user"
exit 1
else 
echo "Root User"
fi

yum install mysql -y

if [ $? -ne 0]
then
echo "ERROR Installing"
else 
echo "success"
fi
