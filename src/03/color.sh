#!/bin/bash

#first parameter

if [ $1 == 1 ]; then
  color1="\033[37m" #white
elif [ $1 == 2 ]; then
  color1="\033[31m" #red
elif [ $1 == 3 ]; then
  color1="\033[32m" #green
elif [ $1 == 4 ]; then
  color1="\033[34m" #blue
elif [ $1 == 5 ]; then
  color1="\033[35m" #purple
elif [ $1 == 6 ]; then
  color1="\033[40m" #black
fi

#second parameter

if [ $2 == 1 ]; then
  color2="\033[37m"
elif [ $2 == 2 ]; then
  color2="\033[31m"
elif [ $2 == 3 ]; then
  color2="\033[32m"
elif [ $2 == 4 ]; then
  color2="\033[34m"
elif [ $2 == 5 ]; then
  color2="\033[35m"
elif [ $2 == 6 ]; then
  color2="\033[40m"
fi

#third parameter

if [ $3 == 1 ]; then
  color3="\033[37m"
elif [ $3 == 2 ]; then
  color3="\033[31m"
elif [ $3 == 3 ]; then
  color3="\033[32m"
elif [ $3 == 4 ]; then
  color3="\033[34m"
elif [ $3 == 5 ]; then
  color3="\033[35m"
elif [ $3 == 6 ]; then
  color3="\033[40m"
fi

#fourth parameter

if [ $4 == 1 ]; then
  color4="\033[37m"
elif [ $4 == 2 ]; then
  color4="\033[31m"
elif [ $4 == 3 ]; then
  color4="\033[32m"
elif [ $4 == 4 ]; then
  color4="\033[34m"
elif [ $4 == 5 ]; then
  color4="\033[35m"
elif [ $4 == 6 ]; then
  color4="\033[40m"
fi

regular_text="\033[0m" #default text

bash data.sh $color1 $color2 $color3 $color4 $regular_text