#!/bin/bash
echo -e "C0 \t N \t idle" >> results.dat

for i in {1..50}
do

# invoke the loadtest
echo "loadtest $i is running.."
./loadtest $i&

# sleep in background to allow further cmds to execute
echo "loadtest $i is sleeping.."
sleep 5

# while load test is running in background collect cpu utilization
idle=`mpstat 5 1 -o JSON | jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`
echo "$idle"

# kill the loadtest
echo "loadtest $i killed.."
pkill loadtest

# write the number of completions in synthetic.dat
C=`cat synthetic.dat | wc -l`

echo -e "$C \t $i \t $idle" >> results.dat

# remove synthetic.dat file each time in the loop for new file to be generated
rm synthetic.dat

done
