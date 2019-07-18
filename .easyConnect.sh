#!/bin/bash
# A menu driven shell script sample template 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

#example of with pem key login
one(){
		echo "Okey Sir! Connecting to SERVER-1 QA\b\b\b\bDEV...." | pv -qL 10
	    sudo ssh username@serverip -i pemkey
}
#example of without pem key
two(){
	echo "Okey Sir! Connecting to SERVER 2 DEV\b\b\bQA...." | pv -qL 10	
	sshpass -p "ssh password" ssh -o StrictHostKeyChecking=no username@serverip    
}

# function to display menu
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~"	
	echo "      SERVER LIST" | pv -qL 10
	echo "~~~~~~~~~~~~~~~~~~~~~~~"
	echo "1. SERVER-1-DEV" 
	echo "2. SERVER-2-QA"
    echo "9. Exit" | pv -qL 10    
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 3 form the menu option.
read_options(){
	local choice
	read -p "Enter choice Sir [#from above list] : " choice
	case $choice in
		1) clear && one ;;
		2) clear && two ;;		
	    *) clear && exit 0;;
	esac
}
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done