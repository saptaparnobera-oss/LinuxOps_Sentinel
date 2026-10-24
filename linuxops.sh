#!/bin/bash


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &&pwd)"


echo "Welcome..."
sleep 1
echo "Please wait..."
sleep 1 
echo "Please wait*.."
sleep 1 
echo "Please wait**."
sleep 1 
echo "Please wait***"
sleep 1 
echo "Do you want to open Linuxops Sentinel?"
echo "+---------------------+"
echo "| Yes :       Enter 1 |"
echo "| No  :       Enter 0 |"
echo "+---------------------+"
echo "Enter Your Choice:"
read i 
if [ $i = 1 ]; then 
while [ $i -eq 1 ]
	do
sleep 1
echo "=========================================================================="
echo "                              linuxops Sentinel                           "
echo "=========================================================================="
echo "                 Linux System Administration & Security Toolkit           "
echo "=========================================================================="
echo ""
echo "System Information"
echo "-----------------------------------"
echo "Hostname : $(hostname)"
echo "User     : $(whoami)"
echo "Kernel   : $(uname -r)"
echo "OS       : $(uname -o)"
echo "Uptime   : $(uptime -p)"
echo ""
echo "================================  MAIN MANU  ============================="
echo -e "\e[33m1.  System Information\e[0m"
echo -e "\e[31m2.  Disk Information\e[0m"
echo -e "\e[34m3.  Network Information\e[0m"
echo -e "\e[35m4.  User Information\e[0m"
echo -e "\e[37m5.  Process Information\e[0m"
echo -e "\e[31m6.  Service Information\e[0m"
echo -e "\e[32m7.  Package Information\e[0m"
echo -e "\e[35m8.  File Management System\e[0m"
echo -e "\e[36m9.  Permission Monitoring\e[0m"
echo -e "\e[34m10. Failed Login Monitoring\e[0m"
echo -e "\e[37m11. Suspicious Process Monitoring\e[0m"
echo -e "\e[33m12. Disk / Storage Warning\e[0m"
echo -e "\e[31m13. Service Failure Warning\e[0m"
echo -e "\e[34m14. Exit\e[0m"
echo "=========================================================================="

read -p "Enter your choice: " choice 
echo "Loading..."
sleep 1 
echo "Loading*.."
sleep 1 
echo "Loading**."
sleep 1
echo "Loading***"
sleep 1 
if [ -z "$choice" ]; then 
echo ""
echo "Error: Choice cannot be empty!"
continue 
fi 
case $choice in 


 1)
	"$SCRIPT_DIR/modules/system_info.sh"
	sleep 2 
	;;
 2)
	"$SCRIPT_DIR/modules/disk_info.sh" 
	sleep 2 
	;;
 3) 
	"$SCRIPT_DIR/modules/network_info.sh" 
	sleep 2 
	;;

 4)	
	"$SCRIPT_DIR/modules/user_info.sh"
	sleep 2
	;;
 5)
	"$SCRIPT_DIR/modules/process_info.sh"
	sleep 2 
	;;
 6) 
	"$SCRIPT_DIR/modules/service_info.sh"
	sleep 2
	;;
 7) 
	"$SCRIPT_DIR/modules/package_info.sh"
	sleep 2 
	;;
 8)	
	
	"$SCRIPT_DIR/modules/file_management_system.sh"
	sleep 2 
	;;

 9) 
	
        "$SCRIPT_DIR/modules/permission_monitor.sh"
        sleep 2 
        ;;

 10) 
	 "$SCRIPT_DIR/modules/failed_login_monitor.sh"
        sleep 2 
        ;;

 11)  "$SCRIPT_DIR/modules/suspicious_process_monitor.sh"
        sleep 2 
        ;;

 12)"$SCRIPT_DIR/modules/disk_warning.sh"
        sleep 2 
        ;;
 
 13)"$SCRIPT_DIR/modules/service_failure_monitor.sh"
        sleep 2 
        ;;

 14) 
	echo "Exiting LinuxOps Sentinel..."
	exit
	;;

 *)
	echo "Invelid Option!"
	echo "Please enter a valid menu option."
	;;
esac 
done 

else 
echo "You close the system"
fi
