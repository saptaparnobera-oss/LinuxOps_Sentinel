#!/bin/bash

echo "========== SERVICE INFORMATION =========="
read -p "Enter Service name :" service 

if systemctl is-active "$service" > /dev/null 2>&1; then 

	status=$(systemctl is-active "$service")

echo ""
echo "Service : $service"
echo "Status  : $status"

else 
	echo""
	echo "Error: Service '$service' not found!"

fi 
