#! /bin/bash
USERID=$(id -u)
echo "$USERID"
if [ $USERID -ne 0 ];  then
   echo " root access"
   exit 1
fi
VALIDATE() {
if [ $? -ne 0 ]; then 
   echo "$1 failed"
else 
    echo "$1 success"
fi
}
dnf install nginx -y
VALIDATE "nginx installation"

dnf install mysql -y
VALIDATE "mysql installation"