#!/bin/bash

#invoke loadtest
./loadtest $1&
echo "running load test.."

#sleep
sleep $2
echo "loadtest is sleeping.."

echo "killing the loadtest.."
#kill the loadtest
pkill loadtest
