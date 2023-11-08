#!/bin/bash

if [ $# -ne 4 ] || [ -z $1 ] || [ -z $2 ] || [ -z $3 ] || [ -z $4 ];
then 
  echo this script can only be used with 4 parameters
else
  bash check.sh $1 $2 $3 $4
fi