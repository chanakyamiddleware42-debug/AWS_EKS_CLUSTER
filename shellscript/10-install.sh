#! /bin/bash
USERID=$(id -u)
echo "$USERID"
if [ $USERID -ne 0 ];  then
   echo " root access"
   exit 1
fi

dnf install nginx -y
if [ $? -ne 0 ]; then 
   echo "nginx installation failed"
else 
    echo " installing nginx"
fi