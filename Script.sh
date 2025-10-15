#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
echo "not root user - Please try with root user"
exit 1
else 
echo "Root User"
fi


VALIDATE(){
if [ $? -ne 0]
then
echo "ERROR git Installing"
else 
echo "success git"
fi
}

yum install mysql -y
VALIDATE

yum install git -y
VALIDATE



