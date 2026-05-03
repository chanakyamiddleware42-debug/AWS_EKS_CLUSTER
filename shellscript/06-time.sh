#! /bin/bash
STARTTIME=$(date +%s)
echo "script executed $STARTTIME"

sleep 10

ENDTIME=$(date +%s)
echo "script end timr $ENDTIME"

EXCUTEDTIME=$(($STARTTIME-$ENDTIME))

echo "script end timr $EXCUTEDTIME"

