#! /bin/bash
NUMBER=$1
if [ $NUMBER -gt 25 ]; then
 echo "$NUMBER is greaterhan 25"
elif [ $NUMBER -eq 25 ]; then
 echo "$NUMBER is equal 25"
else 
 echo "$NUMBER is lessthan 25"
fi