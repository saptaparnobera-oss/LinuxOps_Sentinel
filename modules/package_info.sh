#!/bin/bash 
echo "========= PACKAGE INFORMATION =========="

read -p "Enter package name :" package 

if dpkg -s "$package" > /dev/null 2>&1; 

	then 
		version=$(dpkg-query -W -f='${Version}' "$package")

echo ""

echo "Package : $package"
echo "Status  : Installed"
echo "Version : $version"

else 

	echo ""
	echo "Package '$package' is not installed !"
fi 

