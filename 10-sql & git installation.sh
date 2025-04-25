#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "This command needs to be executed with root user"
    exit 1
fi

dnf installl mysql -y

if [ $? -ne 0 ]
then 
    exit 1
else
    echo "Executed successfully"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    exit 1
else
    echo "Executed successfully"
fi    