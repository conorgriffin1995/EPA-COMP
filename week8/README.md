README!
Week 8
Creating synthetic load tests to simulate a number of users on this machine
and seeing how the machine reacts to the load. 

To run te script 
./loadtest 20 (20 parameter represents 20 users)

history
    8  nano loadtest.c
    9  more loadtest.c 
   10  g++ -fopenmp loadtest.c -o loadtest
   11  ls
   12  ./loadtest 
   13  ./loadtest 5
   14  ./loadtest 20

LoadTestWrapper script used to handle number of load = N
and Time the script runs for = T

The loadtest is ran and we pass in the number of users.
Then we pass in when the test is to sleep in seconds (sleep).
and then kill the loadtest (pkill)

In the script we have a 
Foreground process -> attached to the terminal. AND
Background process -> detached from the terminal.

To invoke the loadtest in the background we use the Ampersand (&) symbol.


