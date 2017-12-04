#!/bin/bash

echo "running job periodically every minute"
crontab -e * * * * * ~/Documents/EPA-COMP/CA2_Practice/tmptest.sh
