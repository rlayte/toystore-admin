#!/bin/bash

# Confirm
echo "Clearing all processes."

# Start all the processes.
cut -d' ' -f2- ./pids.txt | while read pid; do
  kill $pid
done 

# Wipe pid file.
rm pids.txt
# Wipe log files
rm log/*

# RCP launches a seperate process.
pkill admin_toystore
