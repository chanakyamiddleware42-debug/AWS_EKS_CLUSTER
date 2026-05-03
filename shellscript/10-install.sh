#! /bin/bash
USERID=$(id -u)
echo "$USERID"
if [ $USERID -ne 0 ];  then
   echo " root access"
fi

dnf remove nginx -y