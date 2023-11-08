#!/bin/bash

#first parameter

if [ $1 == 1 ]; then
  color1="\033[47m" #white
  conf1="white"
elif [ $1 == 2 ]; then
  color1="\033[41m" #red
  conf1="red"
elif [ $1 == 3 ]; then
  color1="\033[42m" #green
  conf1="green"
elif [ $1 == 4 ]; then
  color1="\033[44m" #blue
  conf1="blue"
elif [ $1 == 5 ]; then
  color1="\033[45m" #purple
  conf1="purple"
elif [ $1 == 6 ]; then
  color1="\033[40m" #black
  conf1="black"
fi

#second parameter

if [ $2 == 1 ]; then
  color2="\033[37m"
  conf2="white"
elif [ $2 == 2 ]; then
  color2="\033[31m"
  conf2="red"
elif [ $2 == 3 ]; then
  color2="\033[32m"
  conf2="green"
elif [ $2 == 4 ]; then
  color2="\033[34m"
  conf2="blue"
elif [ $2 == 5 ]; then
  color2="\033[35m"
  conf2="purple"
elif [ $2 == 6 ]; then
  color2="\033[30m"
  conf2="black"
fi

#third parameter

if [ $3 == 1 ]; then
  color3="\033[47m"
  conf3="white"
elif [ $3 == 2 ]; then
  color3="\033[41m"
  conf3="red"
elif [ $3 == 3 ]; then
  color3="\033[42m"
  conf3="green"
elif [ $3 == 4 ]; then
  color3="\033[44m"
  conf3="blue"
elif [ $3 == 5 ]; then
  color3="\033[45m"
  conf3="purple"
elif [ $3 == 6 ]; then
  color3="\033[40m"
  conf3="black"
fi

#fourth parameter

if [ $4 == 1 ]; then
  color4="\033[37m"
  conf4="white"
elif [ $4 == 2 ]; then
  color4="\033[31m"
  conf4="red"
elif [ $4 == 3 ]; then
  color4="\033[32m"
  conf4="green"
elif [ $4 == 4 ]; then
  color4="\033[34m"
  conf4="blue"
elif [ $4 == 5 ]; then
  color4="\033[35m"
  conf4="purple"
elif [ $4 == 6 ]; then
  color4="\033[30m"
  conf4="black"
fi

regular_text="\033[0m" #default text

bash data.sh $color1 $color2 $color3 $color4 $regular_text

if [ $1 == 6 ] && [ $2 == 1 ] && [ $3 == 6 ] && [ $4 == 1 ]; then
    echo -e "\nColumn 1 background = default (black)"
    echo "Column 1 font color = default (white)"
    echo "Column 2 background = default (black)"
    echo "Column 2 font color = default (white)"
else
    echo -e "\nColumn 1 background = $1 ($conf1) "
    echo "Column 1 font color = $2 ($conf2) "
    echo "Column 2 background = $3 ($conf3) "
    echo "Column 2 font color = $4 ($conf4) "
fi