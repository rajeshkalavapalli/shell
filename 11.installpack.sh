#!/bin/bash 

ID=$(id -u) #get the id 

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
VALIDATE (){
    if [ $1 -ne 0 ];
    then 
        echo "$2 ${R}filed${N}"
    else 
        echo "$2 ${G}sucess ${N}"
    fi
}
TIMESTAMP=$(date +%F-%H-%M-%S)

if [ $ID -eq 0 ]; then 
    echo -e "${G} you're a root user ${N}"
else 
    echo -e "${R} error :: you're not a root user ${N}"
fi

#echo "all arguments passed: $@"
for PACKAGE in "$@";do
yum list installed "$PACKAGE" # check installed or not 
if [  $? -ne 0  ]; then  #if not installed 
  yum install "$PACKAGE" -y  #install the package 
  VALIDATE $? "installation of $PACKAGE"

else 
   echo "$PACKAGE allready installed ...${Y}skipping${N}"

fi
done 

   
