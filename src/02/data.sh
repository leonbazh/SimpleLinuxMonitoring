#!/bin/bash

hostname=$(hostname)
echo HOSTNAME = $hostname

# Получаем текущую временную зону
timezone=$(timedatectl show --property=Timezone --value)

# Получаем смещение временной зоны относительно UTC без нулей
offset=$(date +'%::z')

# Выводим информацию о временной зоне
echo "TIMEZONE = $timezone $offset"