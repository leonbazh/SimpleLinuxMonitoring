#!/bin/bash

for arg in $@; do
  if (( arg < 1 || arg > 6 )); then 
    echo each argument must be in range from 1 to 6
    exit 1
  fi
done

args=($@)

for ((i=0; i<3; i++)); do
  for((j=i+1; j<4; j++)); do
    if [ "${args[i]}" = "${args[j]}" ]; then
      echo argument must be unique
      exit 1
    fi
  done
done

bash color.sh $1 $2 $3 $4