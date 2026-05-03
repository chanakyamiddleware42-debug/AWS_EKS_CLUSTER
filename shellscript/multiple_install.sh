#! /bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
USERID=$(id -u)
echo "$USERID"
LOG_DIR="/opt/chani"
mkdir -p /opt/chani
LOG_FILE="/opt/chani/$0" 


if [ $USERID -ne 0 ];  then
   echo -e " $Y ..root access....$R ..unable to process...$G" | tee -a $LOG_FILE
   exit 1
fi
VALIDATE() {
if [ $1 -ne 0 ]; then 
   echo "$2 failed" | tee -a $LOG_FILE
else 
    echo "$2 success" | tee -a $LOG_FILE
fi
}
dnf install nginx -y &>> $LOG_FILE
VALIDATE $? "nginx installation" 

dnf install mysql -y &>> $LOG_FILE
VALIDATE $? "mysql installation"  