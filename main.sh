#!/bin/sh
[ $# -ne 2 ] && echo -e "$0 <no tasks> <File list>" && exit
echo -n $1 > /tmp/count
for i in $(cat $2); do
        while [ $(cat /tmp/count) -eq 0 ]; do
                sleep 1;
                done
        COUNT=$(cat /tmp/count)
        COUNT=$(( COUNT -1 ))
        echo -n $COUNT > /tmp/count
        ./task.sh $i &
        echo "task $! is getting $i "
        done
echo "List done. Wait for remaining task end"
while [ $(cat /tmp/count) -ne $1 ]; do
        sleep 1;
        done
rm /tmp/count

