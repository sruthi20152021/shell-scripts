#!/bin/bash

ID=$(id -u)

VALIDATE(){
     if [ $1 -ne 0 ]
then
    echo "ERROR: $2 ... FAILED"
    exit 1
else
    echo "$2 ...SUCCESS"
fi


}

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run this script with root acess"
    exit 1 # you can give other than 0
else
    echo "you are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y

VAILDATE $? "Installing MySQL"

yum install git -y

VAILDATE $? "Installing GIT"