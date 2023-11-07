#!/bin/bash

hostname=$(hostname)
echo HOSTNAME = $hostname

timezone=$(timedatectl show --property=Timezone --value)
utc=$(date +'%:::z' | sed 's/+0//')
echo "TIMEZONE = $timezone -$utc"