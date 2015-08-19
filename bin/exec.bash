#!/bin/bash

# Wipe pid file.
echo -n "" > ./pids.txt

# Confirm
echo "Running all processes."

# Start all the processes.
while read port; do
  ## 3000 is the seed port.
  go run ./admin_toystore.go $port > log/"$port".out 2> log/"$port".err &
  echo -n $port >> ./pids.txt
  echo -n  ' ' >> ./pids.txt
  echo $! >> ./pids.txt
done < ./ports.txt
