#!/bin/bash 

echo -e "\e[37m================================\e[0m\e[31mINFORMATION\e[0m\e[37m==============================\e[0m"
echo -e "\e[31mTHIS IS A PATH DIRECTORY BASED SYSTEM\e[0m"
echo "Remmember this when path save .The system work on this path."
echo "You can't change during system running."
echo "Some Commands are not depemd on exact path [like delete,move etc.]"
echo "You can change path during run the exact Commands [like delete,move etc.]"
echo -e "\e[33mIF YOU WANT TO CHANGE THE PATH PLEASE TURN OFF THE SYSTEM AND ENTER AGAIN\e[0m"
echo -e "\e[37m==========================================================================\e[0m"
sleep 3

echo -e "Do You want to open \e[31mFILE MANAGEMENT SYSTEM?\e[0m"

echo -e "\e[37mIf\e[0m \e[32myes press 1\e[0m\e[37m and \e[0mIf \e[31mno press 0\e[0m"

read i 
 


if [ $i = 1 ]; then 

echo "First we need path directory , plese $USER enter the path:"

read path


	
while [ $i -eq 1 ]
	do 
echo "========================================================="
echo "                  FILE MANAGEMENT SYSTEM                 "
echo "========================================================="
echo -e "\e[34m1.  CREATE FILE\e[0m"
echo -e "\e[31m2.  DELETE FILE\e[0m"
echo -e "\e[35m3.  RENAME FILE\e[0m"
echo -e "\e[33m4.  COPY FILE\e[0m"
echo -e "\e[37m5.  MOVE FILE\e[0m"  
echo -e "\e[34m6.  CHECK FILE EXISTS\e[0m"
echo -e "\e[31m7.  CHECK REGULAR FILE\e[0m"
echo -e "\e[35m8.  CHECK DIRECTORY\e[0m"
echo -e "\e[33m9.  CHECK FILE CONTAINS DATA\e[0m"
echo -e "\e[37m10. CHECK READ PERMISSION\e[0m"
echo -e "\e[32m11. CHECK WRITE PERMISSION\e[0m"
echo -e "\e[35m12. CHECK EXECUTE PERMISSION\e[0m"
echo -e "\e[32m13. HELP!\e[0m"
echo -e "\e[31m14. EXIT\e[0m"
echo "========================================================="
echo "ENTER NO OF YOUR CHOICE [ONLY NUMBER]:"



read var 


echo -e "\e[31mLoading...\e[0m"
sleep 1 
echo -e "\e[33mLoading*..\e[0m"
sleep 1 
echo -e "\e[33mLoading**.\e[0m"
sleep 1
echo "Loading***"
sleep 1 
cd $path

case $var in 

1) echo -e "------\e[34m1. CREATE FILE\e[0m------"
        sleep 1 
        echo "Enter file name with file formate [Example - .txt ; .jpg ; .c]"
        read cf  
        if [ -f "$cf" ]; then 
        echo "This name file aldready exixts"
        else 
        touch $cf 
        sleep 1 
        echo "Your file created!"
        fi
        sleep 2 
        ;;
2) echo -e "------\e[34m2. DELETE FILE\e[0m------"
        sleep 1 
        echo "Enter file name with file formate [Example - .txt ; .jpg ; .c]"
        read df  
        echo "Enter Path Where the File Exists"
        read pat
        sleep 1 
        cd $pat
        if [ -f "$df" ]; then 
        echo "We find this file : $df"
        sleep 1 
        echo "Are you sure to delete this file ?"
        sleep 1 
        echo "enter 0 [Yes] or 1 [No]"
        read v
                if [ $v = 0 ]; then
                rm $df
                sleep 2 
                echo "Your file delete succsefuly" 
                sleep 2 
                else  
                echo "Delete file process permission denied!"
                sleep 2 
                fi 
 
        else     
        sleep 1  
        echo "This $df file does not exist in this path! Try again"
        fi
        sleep 2 
        ;;


3) echo -e "------\e[34m3. RENAME FILE\e[0m------" 
        sleep 1 
        echo "Enter file name with file formate [Example - .txt ; .jpg ; .c]"
        read n
        if [ -f "$n" ]; then 
        echo "Find this file"
        echo "Enter new name with file formate [Example - .txt ; .jpg ; .c]"
        read rn 
        sleep 1
        mv $n $rn 
        sleep 2 
        echo "Rename process status : Succsesful"
        else 
        sleep 1 
        echo "This $name file does not exist in this path! Try again"
        fi
        sleep 2 
        ;;
4) echo -e "------\e[34m4. COPY FILE\e[0m------"
        sleep 1 
        echo "Enter file name with file formate [Example - .txt ; .jpg ; .c]"
        read copy  
        if [ -f "$copy" ]; then 
        echo "This name file aldready exixts"
        echo "Please enter Path :"
        read d 
        cp $copy $d 
        sleep 2 
        echo "Copy Process status: Successful"
        sleep 2

        else  
        echo "This $copy file does not exist in this path! Try again"
        fi
        sleep 2 
        ;;
5) echo -e "------\e[34m5. MOVE FILE\e[0m------"
        sleep 1 
        echo "Enter file name with file formate [Example - .txt ; .jpg ; .c]"
        read move
        echo "Enter Path directory where your File Exists"
        sleep 1 
        read p
        cd $p
        if [ -f "$move" ]; then 
        echo "This name file aldready exixts"
        echo "Please enter Path Where you want move:"
        read d 
        mv $move $d 
        sleep 2 
        echo "Move Process status: Successful"
        sleep 2
        else  
        echo "This $move file does not exist in this path! Try again"
        fi
        sleep 2 
        ;;
6) echo -e "\e[34m-----CHECK FILE EXIST IN SYSTEM-----\e[0m"
	echo "Enter the file name" 
	read filename1
 	if [ -e "$filename1" ]; then 
 	echo "Yes This file exist"
	else echo "No! this file does not exist in given PATH DIRECTORY"
	fi  
	sleep 2
	;;
7) echo -e "\e[31m-----CHECK REGULAR FILE IN SYSTEM-----\e[0m"
        echo "Enter the file name" 
        read filename2
        if [ -f "$filename2" ]; then 
        echo "Yes This Regular file exist"
        else echo "No! this Ragular file does not exist in given PATH DIRECTORY"
        fi 
	sleep 2

        ;;
8) echo -e "\e[35m-----CHECK PATH DIRECTORY IN SYSTEM-----\e[0m"
        echo "Enter the PATH DIRECTORY" 
        read directory 
        if [ -d "$directory" ]; then 
        echo "Yes This Path directory Exist"
        else
	echo "No! this Path directory does not exist."
	  fi 
	sleep 2
        ;;
9) echo -e "\e[33m-----CHECK FILE CONTAINS DATA-----\e[0m"
        echo "Enter the file name" 
        read emfile    
        if [ -s "$emfile" ]; then 
        echo "This is not a empty file."
        else echo "This file is empty."
        fi 
	sleep 2
        ;; 
10) echo -e "\e[37m-----CHECK READ PERMISSION-----\e[0m"
        echo "Enter the file name" 
        read rfile     
        if [ -r "$rfile" ]; then 
        echo "This File has read permission."
        else echo "This file does not has read pernission."
        fi 
	sleep 2
        ;; 
11) echo -e "\e[32m-----CHECK WRITE PERMISSION-----\e[0m"
        echo "Enter the file name" 
        read wfile     
        if [ -w "$wfile" ]; then 
        echo "This File has write permission."
        else echo "This file does not has write pernission."
        fi 
       sleep 2
	 ;; 
12) echo -e "\e[35m-----CHECK EXECUTE PERMISSION-----\e[0m"
        echo "Enter the file name" 
        read xfile     
        if [ -x "$xfile" ]; then 
        echo "This File has execute permission."
        else echo "This file does not has execute pernission."
        fi 
	sleep 2
        ;;
13) echo -e "\e[32m=================================== HELP ====================================\e[0m" 
        echo "1.  Create File               : CREATE A NEW FILE" 
        echo "2.  Delete File               : DELETE AN EXISTING FILE "
        echo "3.  Rename File               : CHANGE THE FILE NAME"
        echo "4.  Copy File                 : COPY A FILE ANOTHER LOCATION"
        echo "5.  Move File                 : MOVE A FILE ANOTHER LOCATION"
	echo "6.  Check File Exists         : CHECK WHETHER A FILE OR DIRECTORY EXIXSTS"
	echo "7.  Check Regular File        : VERIFY WHETHER THE PATH IS A REGULAR FILE"
	echo "8.  Check directory           : VERIFY WHETHER THE PATH IS A DIRECTORY"
	echo "9.  Check File Contains       : CHECK WHETHER THE FILE CONTAINS DATA"
	echo "    Data"
	echo "10. Check Read Permission     : VERIFY READ PERMISSION"
	echo "11. Check Write Permission    : VERIFY WRITE PERMISSION"
	echo "12. Check Execute Permission  : VERIFY EXECUTE PERMISSION"
    echo -e "\e[32m=============================================================================\e[0m"
sleep 3

        ;;

 
14) echo -e "\e[31mdid you really want to exit to this system?\e[0m"
	sleep 1 
	echo "If Yes enter 0 / If No enter 1"
	read i 
	if [ $i = 0 ]; then
	echo "System Shutdown..."
	sleep 1 
	echo "System Shutdown*.."
	sleep 1
	echo "System Shutdown**."
        sleep 1 
	echo "System Shutdown***"
        
	else
	echo "Thankyou for stay :)"
	sleep 2

	fi 
	;;
*) echo "ERROR :("
	echo "You enter the wrong option number which is not include in this system!!"
	;;
esac 

done 

else 
 echo "You close the system"

fi
