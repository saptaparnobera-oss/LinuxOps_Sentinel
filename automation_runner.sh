#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/logs/automation.log"

echo "========== LINUXOPS AUTOMATION =========="
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Automation started." >> "$LOG_FILE"

echo ""
echo "Running Permission Monitoring..."
"$SCRIPT_DIR/modules/permission_monitor.sh"

echo ""
echo "Running Failed Login Monitoring..."
"$SCRIPT_DIR/modules/failed_login_monitor.sh"

echo ""
echo "Running Suspicious Process Monitoring..."
"$SCRIPT_DIR/modules/suspicious_process_monitor.sh"

echo ""
echo "Running Disk / Storage Warning..."
"$SCRIPT_DIR/modules/disk_warning.sh"

echo ""
echo "Running Service Failure Detection..."
"$SCRIPT_DIR/modules/service_failure_monitor.sh"

echo ""
echo "Automation completed."

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Automation completed." >> "$LOG_FILE"
