#!/bin/bash

echo "========== DISK / STORAGE WARNING =========="

LOG_FILE="$(dirname "$0")/../logs/disk_warning.log"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../config/settings.conf"

THRESHOLD=$DISK_THRESHOLD

echo ""
echo "Checking disk usage..."
echo ""

RESULT=$(df -h | awk -v limit="$THRESHOLD" 'NR > 1 && $5+0 >= limit')

if [ -z "$RESULT" ]; then

    echo "Disk usage is normal."
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Disk usage normal." >> "$LOG_FILE"

else

    echo "WARNING: High disk usage detected!"
    echo ""
    echo "$RESULT"

    echo "[$(date '+%Y-%m-%d %H:%M:%S')] High disk usage detected:" >> "$LOG_FILE"
    echo "$RESULT" >> "$LOG_FILE"

fi
