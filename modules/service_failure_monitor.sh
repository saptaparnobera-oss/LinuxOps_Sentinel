#!/bin/bash

echo "========== SERVICE FAILURE DETECTION =========="

LOG_FILE="$(dirname "$0")/../logs/service_failure.log"

SERVICES=("cron" "ssh")

for service in "${SERVICES[@]}"; do

    status=$(systemctl is-active "$service" 2>/dev/null)

    if [ "$status" = "active" ]; then
        echo "Service : $service"
        echo "Status  : ACTIVE"
        echo ""
    else
        echo "WARNING: Service '$service' is not active!"
        echo ""

        echo "[$(date '+%Y-%m-%d %H:%M:%S')] Service '$service' is $status." >> "$LOG_FILE"
    fi

done
