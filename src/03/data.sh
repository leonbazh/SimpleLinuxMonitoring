#!/bin/bash

hostname=$(hostname)
echo -e "$1$2HOSTNAME = $3$4$hostname$5"

timezone=$(timedatectl show --property=Timezone --value)
utc=$(date +'%:::z' | sed 's/+0//')
echo -e "$1$2TIMEZONE = $3$4$timezone -$utc$5"

user=$(whoami)
echo -e "$1$2USER = $3$4$user$5"

os=$(lsb_release -ds)
echo -e "$1$2OS = $3$4$os$5"

date=$(date +'%d %b %Y %H:%M:%S')
echo -e "$1$2DATE = $3$4$date$5"

uptime=$(uptime -p | awk '{print $2,$3}')
echo -e "$1$2UPTIME = $3$4$uptime$5"

uptime_sec=$(awk '{printf("%.f", $1)}' /proc/uptime)
echo -e "$1$2UPTIME_SEC = $3$4$uptime_sec seconds$5"

ip_address=$(ip a show enp0s3 | awk '/inet / {print $2}')
echo -e "$1$2IP = $3$4$ip_address$5"

netmask=$(ipcalc $ip_address | awk '/Netmask: / {print $2}')
echo -e "$1$2NETMASK = $3$4$netmask$5"

gateway_default=$(ip r | awk '/default via / {print $3}')
echo -e "$1$2GATEWAY = $3$4$gateway_default$5"

ram_total=$(free --mega | awk '/Mem: / {printf("%.3f" ,$2 /1000)}')
echo -e "$1$2RAM_TOTAL = $3$4$ram_total GB$5"

ram_used=$(free --mega | awk '/Mem: / {printf("%.3f", $3 /1000)}')
echo -e "$1$2RAM_USED = $3$4$ram_used GB$5"

ram_free=$(free --mega | awk '/Mem: / {printf("%.3f", $4 /1000)}')
echo -e "$1$2RAM_FREE = $3$4$ram_free GB$5"

space_root=$(df -k / | awk 'NR==2 {printf("%.2f", $2 / 1000)}')
echo -e "$1$2SPACE_ROOT = $3$4$space_root MB$5"

space_used=$(df -k / | awk 'NR==2 {printf("%.2f", $3 / 1000)}')
echo -e "$1$2SPACE_USED = $3$4$space_used MB$5"

space_free=$(df -k / | awk 'NR==2 {printf("%.2f", $4 / 1000)}')
echo -e "$1$2SPACE_FREE = $3$4$space_free MB$5"