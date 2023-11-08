#!/bin/bash

if [ $# -ne 0 ];
then 
  echo this script can only be used without parameters
else
  bash data.sh
  read -p "do you want to save stats? | print "Y/N" " answer
  if [[ $answer == "Y" || $answer == "y" ]];
  then
    bash save.sh
  fi
fi