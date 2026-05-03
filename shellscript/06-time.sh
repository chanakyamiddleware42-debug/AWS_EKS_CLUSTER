#! /bin/bash
STARTTIME=$(date)
echo "script executed $STARTTIME"

sleep 10

ENDTIME=$(date)
echo "script end timr $ENDTIME"

EXCUTEDTIME=(( $STARTTIME-$ENDTIME ))

echo "script end timr $EXCUTEDTIME"

