#!/bin/bash
# Here you can put your code $1 represent the current working item in the list you specified to the main.
COUNT=$(cat /tmp/count);
COUNT=$(( COUNT +1 ))
echo -n $COUNT >/tmp/count
echo "task $$ is done"

