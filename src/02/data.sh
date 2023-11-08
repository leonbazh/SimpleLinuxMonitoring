#!/bin/bash

hostname=$(hostname)
echo HOSTNAME = $hostname

timezone=$(timedatectl show --property=Timezone --value)
utc=$(date +'%:::z' | sed 's/+0//')
echo TIMEZONE = $timezone -$utc

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

ip_address=$(ip a show enp0s3 | awk '/inet / {print $2}')
echo IP = $ip_address

netmask=$(ipcalc $ip_address | awk '/Netmask: / {print $2}')
echo NETMASK = $netmask

gateway_default=$(ip r | awk '/default via / {print $3}')
echo GATEWAY = $gateway_default

ram_total=$(free --mega | awk '/Mem: / {printf("%.3f" ,$2 /1000)}')
echo RAM_TOTAL = $ram_total GB

ram_used=$(free --mega | awk '/Mem: / {printf("%.3f", $3 /1000)}')
echo RAM_USED = $ram_used GB

ram_free=$(free --mega | awk '/Mem: / {printf("%.3f", $4 /1000)}')
echo RAM_FREE = $ram_free GB

space_root=$(df -k / | awk 'NR==2 {printf("%.2f", $2 / 1000)}')
echo SPACE_ROOT = $space_root MB

space_used=$(df -k / | awk 'NR==2 {printf("%.2f", $3 / 1000)}')
echo SPACE_USED = $space_used MB

space_free=$(df -k / | awk 'NR==2 {printf("%.2f", $4 / 1000)}')
echo SPACE_FREE = $space_free MB