#!/bin/bash

if [ ! -d $1 ]; then
  echo "incorrect path to directory, try again"
  exit 1
fi

start_time=$(date +%s)

sudo bash list.sh $1

end_time=$(date +%s)

process_time=$(($end_time - $start_time))
echo "Script execution time (in seconds) = $process_time"