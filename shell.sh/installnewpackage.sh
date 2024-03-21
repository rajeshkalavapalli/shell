#!/bin/bash 
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started and exicuted :$TIMESTAMP"  >> LOGFILE 2>&1

VALIDATE (){
if [ $1 -ne 0 ]
then 
    echo -e "$2 ....... ${R}installation failed${N}"
else 
    echo -e "$2 ......... ${G}installation sucess${N}"
fi
}

if [ $ID -ne 0 ]
  then 
    echo -e "${R}Error :: please run this  script with root user${N}"  
    exit 1
  else
    echo "you're a root user"
fi   
   # echo "all arguments passed:$@"
for PACKAGE in $@
do 
    yum list installed $PACKAGE >> LOGFILE 2>&1

    if [ $? -ne 0 ] 
    then 
    yum install $PACKAGE -y >> LOGFILE 2>&1
    
    VALIDATE $? "installed $PACKAGE"
    else
    echo -e "$PACKAGE is already installed ......${Y}Skiping${N}"
    fi
done 
echo "Script execution completed" >> "$LOGFILE"

