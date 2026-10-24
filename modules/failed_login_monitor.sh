#!/bin/bash

echo "========== FAILED LOGIN MONITORING =========="

LOG_FILE="$(dirname "$0")/../logs/failed_login.log"

echo ""
echo "Checking failed login attempts..."
echo ""

FAILED_LOGINS=$(sudo journalctl --no-pager --since "24 hours ago" 2>/dev/null | grep -i "failed password" | tail -20)

if [ -z "$FAILED_LOGINS" ]; then

    echo "No failed login attempts found in the last 24 hours."

    echo "[$(date '+%Y-%m-%d %H:%M:%S')] No failed login attempts found." >> "$LOG_FILE"

else

    echo "$FAILED_LOGINS"

    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Failed login attempts detected:" >> "$LOG_FILE"
    echo "$FAILED_LOGINS" >> "$LOG_FILE"

fi
