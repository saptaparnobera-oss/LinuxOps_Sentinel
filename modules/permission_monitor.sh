#!/bin/bash 

echo "========== PERMISSION MONITORING =========="

read -p "Enter file/directory path: " path 

if [ ! -e "$path" ];then 
	echo "Error! : File or Directory does not exist!"
	exit 1
fi 

echo ""
echo "Path         : $path"
echo "Owner        : $(stat -c '%U' "$path")"
echo "Group        : $(stat -c '%G' "$path")"
echo "Permission   : $(stat -c '%A' "$path")"

LOG_FILE="$(dirname "$0")/../logs/permission.log"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Path: $path | Owner: $(stat -c '%U' "$path") | Group :$(stat -c '%G' "$path") | Permission : $(stat -c '%A' "$path")">>"$LOG_FILE"
