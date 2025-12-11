# DISK
disk_usage=$(df / | awk 'NR==2 {print $5}')
echo "Disk Usage: $disk_usage"
