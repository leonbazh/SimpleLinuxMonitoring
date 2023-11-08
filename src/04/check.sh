#!/bin/bash

for arg in $@; do
  if (( arg < 1 || arg > 6 )); then 
    echo each argument must be in range from 1 to 6
    exit 1
  fi
done

if [ $1 == $2 ] || [ $3 == $4 ]; then
  echo background and font from each row must be different
  exit 1
fi

bash color.sh $1 $2 $3 $4