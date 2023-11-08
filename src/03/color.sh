#!/bin/bash

#first parameter

if [ $1 == 1 ]; then
  color1="\033[37" #white
elif [ $1 == 2 ]; then
  color1="\033[31" #red
elif [ $1 == 3 ]; then
  color1="\033[32" #green
elif [ $1 == 4 ]; then
  color1="\033[34" #blue
elif [ $1 == 5 ]; then
  color1="\033[35" #purple
elif [ $1 == 6 ]; then
  color1="\033[40" #black
fi

#second parameter

if [ $2 == 1 ]; then
  color2="\033[37"
elif [ $2 == 2 ]; then
  color2="\033[31"
elif [ $2 == 3 ]; then
  color2="\033[32"
elif [ $2 == 4 ]; then
  color2="\033[34"
elif [ $2 == 5 ]; then
  color2="\033[35"
elif [ $2 == 6 ]; then
  color2="\033[40"
fi

#third parameter

if [ $3 == 1 ]; then
  color3="\033[37"
elif [ $3 == 2 ]; then
  color3="\033[31"
elif [ $3 == 3 ]; then
  color3="\033[32"
elif [ $3 == 4 ]; then
  color3="\033[34"
elif [ $3 == 5 ]; then
  color3="\033[35"
elif [ $3 == 6 ]; then
  color3="\033[40"
fi

#fourth parameter

if [ $4 == 1 ]; then
  color4="\033[37"
elif [ $4 == 2 ]; then
  color4="\033[31"
elif [ $4 == 3 ]; then
  color4="\033[32"
elif [ $4 == 4 ]; then
  color4="\033[34"
elif [ $4 == 5 ]; then
  color4="\033[35"
elif [ $4 == 6 ]; then
  color4="\033[40"
fi

regular_text="\033[0m" #default text

bash data.sh $color1 $color2 $color3 $color4 $regular_text