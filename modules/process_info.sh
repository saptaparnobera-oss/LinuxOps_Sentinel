#!/bin/bash

echo ""
echo "========== PROCESS INFORMATRION =========="
echo "Top Processes :"
ps aux --sort=-%cpu | head 
