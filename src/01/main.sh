#!/bin/bash

if [ -z "$1" ] || [ $# -ne 1 ]; #проверяем наличие аргумента и чтобы аргумент был один
then
  echo too many or no parameters
else
  if [[ $1 =~ ^[0-9]+([.,^/][0-9]+)?$ ]]; # проверяем не является ли аргумент числом
  then
    echo the entered parameter is a number
  else
    echo $1
  fi
fi