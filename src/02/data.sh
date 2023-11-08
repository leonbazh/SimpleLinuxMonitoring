#!/bin/bash

hostname=$(hostname)
echo HOSTNAME = $hostname

timezone=$(timedatectl show --property=Timezone --value)
utc=$(date +'%:::z' | sed 's/+0//')
echo "TIMEZONE = $timezone -$utc"

user=$(whoami)
echo USER = $user

os=$(lsb_release -ds)
echo OS = $os

date=$(date +'%d %b %Y %H:%M:%S')
echo DATE = $date

uptime=$(uptime -p | awk '{print $2,$3}')
echo UPTIME = $uptime

uptime_sec=$(awk '{printf("%.f", $1)}' /proc/uptime)
echo UPTIME_SEC = $uptime_sec seconds

inteface=enp0s3

ip=$(ip a show $interface)
echo IP = $ip

