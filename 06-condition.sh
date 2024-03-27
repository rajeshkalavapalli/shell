#!/bin/bash

echo "please enter your number"
read NUMBER

if [ $NUMBER -gt 100 ]
then
    echo "given number is  grater then 100"
else
    echo "given number is not grater then 100"
fi