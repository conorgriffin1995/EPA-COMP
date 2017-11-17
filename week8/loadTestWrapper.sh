#!/bin/bash

# invoke the load test with appropriate parameters
# sleep for the duration of the load test T
# pkill the load test

# invoke
./loadtest $1&

# sleep
sleep $2

# kill the loadtest
pkill laodtest
