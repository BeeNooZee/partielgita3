

#!/bin/sh

echo "----- MONITORING -----"

# CPU
cpu_usage=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')
echo "CPU Usage: $cpu_usage%"


# RAM
ram_usa=$(free | awk '/Mem:/ {printf("%.2f"), $3/$2 * 100}')
echo "RAM Usage: $ram_usage%"

# DISK
disk_usage=$(df / | awk 'NR==2 {print $5}')
echo "Disk Usage: $disk_usage"
