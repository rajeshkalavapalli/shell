#!/bin/bash 
ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

if [ $id -ne 0 ]
   then 
   echo "error :: your not a route user"
   else 
   echo "your a route user"
   fi
echo "all argument passed :$@"
