#!/bin/bash

hostname=$(hostname)
echo HOSTNAME = $hostname

TIMEZONE=$(timedatectl| grep "Time" | awk '{print $3, $4, $5}' | sed -E 's/^(.*)\((.*), (.*)00\)/\1 \2 \3/' | awk '{ printf ("%s %s %d", $1, $2, $3) }')
echo "TIMEZONE = $TIMEZONE"