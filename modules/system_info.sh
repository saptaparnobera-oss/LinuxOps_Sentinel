#!/bin/bash 
echo ""
echo "========== System Information =========="
echo "Hostname : $(hostname)"
echo "User     : $(whoami)"
echo "Kernel   : $(uname -r)"
echo "OS       : $(uname -o)"
echo "Uptime   : $(uptime -p)"
echo ""

