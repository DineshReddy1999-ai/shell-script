#!/bin/bash

echo "All variables passed : $@"
echo "No of variables : $#"
echo "present working dir : $PWD"
echo "home dir of user : $HOME"
echo "process id of current one : $$"
echo "which user running the script : $USER"
sleep 10 &
echo "process id of the last command : $!" 
