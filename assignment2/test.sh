#!/usr/bin/env bash
runs=0
while true;
do
 ./script_test.sh &> output
 if [[ "$?" -ne 0 ]]; then 
 break
 fi
 runs=$[runs+1]
done
echo "how many runs it took for the script to fail: $runs"
cat output
