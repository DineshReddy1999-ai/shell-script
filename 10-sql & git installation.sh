#!/bin/bash

if [ uid -ne 0]
then
    echo "ëxit"
else
    echo "Execute with root"
fi

dnf install mysql -y

if [ $? -ne 0]
then 
    echo "exit"
else
    echo "Executed successfully"
fi

dnf install git -y

if [ $? -ne 0]
then
    echo "exit"
else
    echo "Executed successfully"
fi    