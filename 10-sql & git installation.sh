#!/bin/bash

if [ id -ne 0 ]
then
    echo "exit 1"
else
    echo "Execute with root"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "exit 1"
else
    echo "Executed successfully"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "exit 1"
else
    echo "Executed successfully"
fi    