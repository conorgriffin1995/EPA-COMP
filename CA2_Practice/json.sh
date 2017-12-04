#!/bin/bash

# the script runs mpstat for 10 seconds and collects one sample of output
# the script uses pipe to jq to have jq identify the cpu-load value from mpstat
# the script uses jq to subtract this number from 100 to obtain the utilization of the cpu.

echo "collecting data from system statistics.."

stats=`mpstat -o JSON | jq '.sysstat'`
echo "$stats"
echo ""

echo "parsing and extracting values of interest"
echo "identifying the cpu-load"
cpuload=`mpstat -o JSON | jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`
echo "$cpuload"
echo ""

echo "using jq to subtract from 100 to identify utiliztion of the cpu and idle time"
results=`mpstat 10 1 -o JSON | jq '100 - .sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`
echo "$results"

echo -e "idle\n$results" >> /home/conorgriffin/Documents/EPA-COMP/CA2_Practice/results.dat


