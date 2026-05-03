#! /bin/bash
USERID=$(id -u)
echo "$USERID"
LOG_DIR="/opt/chani"
mkdir -p /opt/chani
LOG_FILE="/opt/chani/$0"


if [ $USERID -ne 0 ];  then
   echo " root access"
   exit 1
fi
VALIDATE() {
if [ $1 -ne 0 ]; then 
   echo "$2 failed"
else 
    echo "$2 success"
fi
}
dnf install nginx -y &>> LOG_FILE
VALIDATE $? "nginx installation" 

dnf install mysql -y &>> LOG_FILE
VALIDATE $? "mysql installation"  