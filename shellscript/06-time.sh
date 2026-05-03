#! /bin/bash
STARTTIME=$(date +%t)
echo "script executed $STARTTIME"

sleep 10

ENDTIME=$(date +%t)
echo "script end timr $ENDTIME"

EXCUTEDTIME=$(($STARTTIME-$ENDTIME))

echo "script end timr $EXCUTEDTIME"

