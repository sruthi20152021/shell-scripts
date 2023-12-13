#!/bin/bash

ID=$(id -u)

VALIDATE(){
     if [ $? -ne 0 ]
then
    echo "ERROR: Installing mysql is failed"
    exit 1
else
    echo "Installing Mysql is SUCCESS"
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

VAILDATE

yum install git -y

VALIDATE 