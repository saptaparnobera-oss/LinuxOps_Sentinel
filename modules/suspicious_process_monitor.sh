#!/bin/bash

echo "========== SUSPICIOUS PROCESS MONITORING =========="

LOG_FILE="$(dirname "$0")/../logs/suspicious_process.log"

echo ""
echo "Checking procress with high CPU usage..."

echo ""

RESULT=$(ps aux --sort=-%cpu | awk 'NR>1 && $3> 80' | head -10)

if [ -z "$RESULT" ]; then 

	echo "No suspicious process found."
	echo "[$(date '+%Y-%m-%d %H:%M:%S')] No high CPU process found.">>"$LOG_FILE"
else
	echo "WARNING: High CPU usage detected!"
	echo ""
	echo "$RESULT"
	echo "[$(date '+%Y-%m-%d %H:%M:%S')] High CPU process detected:">>"$LOG_FILE"
	echo "$RESULT">>"$LOG_FILE"
	
fi 
