#!/usr/bin/bash

# Declaring variables for colour the output message
NONE='\033[00m'
GREEN='\033[01;32m'
UNDERLINE='\033[4m'
YELLOW='\033[01;33m'
BOLD='\033[1m'
RED='\033[1;31m'
BLUE='\033[1;36m'


cat << "EOF"
   ______             _               _______             _             
 / _____)           (_)       _     (_______)           (_)            
( (____   ____  ____ _ ____ _| |_    _____   ____   ____ _ ____  _____ 
 \____ \ / ___)/ ___) |  _ (_   _)  |  ___) |  _ \ / _  | |  _ \| ___ |
 _____) | (___| |   | | |_| || |_   | |_____| | | ( (_| | | | | | ____|
(______/ \____)_|   |_|  __/  \__)  |_______)_| |_|\___ |_|_| |_|_____)
                      |_|                         (_____|                    

EOF

echo -e "******************  ${GREEN}https://script-engine.netlify.app${NONE}  ******************"
echo -e "******************  ${RED}Developed by: Rahul Mishra${NONE}  ******************"
echo -e "******************  ${BLUE}Twitter: @r_mishra10${NONE}  ******************"
echo ""
echo "List of categories. Please select any option"


choise1="Shell Python Networking Cryptography General Exploitation"

select option1 in $choise1;
do
	if [ $REPLY = 1 ];
then 
	echo -e "${GREEN}[*] You selected shell scripts${NONE}"
	./shell.sh
	break

elif [ $REPLY = 2 ]
then 
	echo -e "${GREEN}[*] You selected python scripts${NONE}"
	./python.sh
	break

elif [ $REPLY = 3 ]
then
	echo -e "${GREEN}[*] You selected networking scripts${NONE}"
	./networking.sh
 	break

elif [ $REPLY = 4 ]
then
	echo -e "${GREEN}[*] You selected cryptography scripts${NONE}"
	./cryptography.sh
	break

elif [ $REPLY = 5 ]
then
	echo -e "${GREEN}[*] You selected general scripts${NONE}"
	./general.sh
	break
elif [ $REPLY = 6 ]
then 
	echo -e "${GREEN}[*] You selected exploitation scripts${NONE}"
	./exploitation.sh
	break 
else
	echo -e "${RED}[!] Invaild choise, please choose one from the list only.${NONE}"
fi
done
