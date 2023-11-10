#!/bin/bash

if [ $# -ne 1 ] || [ -z $1 ]; then
  echo script must run with a single parameter
elif [[ $1 != */ ]]; then
  echo entered parameter must end with "/"
else 
  bash check.sh $1
fi

