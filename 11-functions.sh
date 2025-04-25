#!/bin/bash

USER=$( id -u )

if [ $user -ne 0 ]
then 
    echo "This needs to be executed as a root user"
    exit 1
VALIDATE () {
    if [ $1 -ne 0 ]
    then
        echo "$2"
        exit 1
    else
        echo "$2"
fi    
}

dnf list installed mysql -y
if [ $? -ne 0 ]
then 
dnf install mysql -y
    VALIDATE $? "mysql is installing"

dnf list installed git -y
if [ $? -ne 0 ]
then 
dnf install git -y
    VALIDATE $? "git is installing"
else
    echo "already installed"
fi    