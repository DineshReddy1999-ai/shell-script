#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "This command needs to be executed with root user"
    exit 1
fi

dnf list intalled mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installation failure.... FAILED"
        exit 1
    else
        echo "Install Mysql.....SUCCESS"
    fi
else
    echo "MYSQL already Installed .... SUCCESS"
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo "Installation failure..... FAILED"
        exit 1
    else
        echo "Install Git..... SUCCESS"
    fi
else 
    echo "GIT already Installed......SUCCESS "
fi