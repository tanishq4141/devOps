#!/bin/bash

read -p "Enter the output directory name [system_info]: " output_directory
output_directory=${output_directory:-system_info}

mkdir -p "$output_directory"
process_file="$output_directory/running_processes.txt"
touch "$process_file"

current_date=$(date)
hostname=$(hostname)
username=$(whoami)
disk_usage=$(df -h .)
running_processes=$(ps aux)

printf 'Current date: %s\n' "$current_date"
printf 'Hostname: %s\n' "$hostname"
printf 'Username: %s\n' "$username"
printf 'Disk usage:\n%s\n' "$disk_usage"
printf 'Running processes:\n%s\n' "$running_processes"

printf '%s\n' "$running_processes" > "$process_file"
printf '\nRunning processes were saved to: %s\n' "$process_file"






