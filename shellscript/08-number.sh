#! bin/bash
NUM1=100
NUM2=200
SUM=$(($NUM1+$NUM2))
echo "sum is $SUM"

FRUITS=( "apple" "orange" "bbb")
echo "fruits:${FRUITS[@]}"
echo "first fruits: ${FRUITS[0]}"
echo "second fruits: ${FRUITS[1]}"
echo "thrid fruits: ${FRUITS[3]}"