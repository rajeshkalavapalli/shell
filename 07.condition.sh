#!/bin/bash 

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
   echo "given $NUMBER is gretaer then 100"
else
   echo "given $NUMBER is not grater than 100"
fi