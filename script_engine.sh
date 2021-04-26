#!/usr/bin/bash

cat << "EOF"
   ______             _               _______             _             
 / _____)           (_)       _     (_______)           (_)            
( (____   ____  ____ _ ____ _| |_    _____   ____   ____ _ ____  _____ 
 \____ \ / ___)/ ___) |  _ (_   _)  |  ___) |  _ \ / _  | |  _ \| ___ |
 _____) | (___| |   | | |_| || |_   | |_____| | | ( (_| | | | | | ____|
(______/ \____)_|   |_|  __/  \__)  |_______)_| |_|\___ |_|_| |_|_____)
                      |_|                         (_____|                    

EOF

echo "list of categories. Please select any option"

choise1="Shell Python Networking Cryptography General Exploitation"

select option1 in $choise1;
do
	if [ $REPLY = 1 ];
then 
	echo "[*] You selected shell scripts"
	./shell.sh
	break

elif [ $REPLY = 2 ]
then 
	echo "[*] You selected python scripts"
	./python.sh
	break

elif [ $REPLY = 3 ]
then
	echo "[*] You selected networking scripts"
	./networking.sh
 	break

elif [ $REPLY = 4 ]
then
	echo "[*] You selected cryptography scripts"
	./cryptography.sh
	break

elif [ $REPLY = 5 ]
then
	echo "[*] You selected general scripts"
	./general.sh
	break
elif [ $REPLY = 6 ]
then 
	echo "[*] You selected exploitation scripts"
	./exploitation.sh
	break 
else
	echo "[!] Invaild choise, please choose one from the list only."
fi
done
