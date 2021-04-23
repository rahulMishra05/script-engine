#!/usr/bin/bash

cat << "EOF"
  ___         _      _     ___           _          
 / __| __ _ _(_)_ __| |_  | __|_ _  __ _(_)_ _  ___ 
 \__ \/ _| '_| | '_ \  _| | _|| ' \/ _` | | ' \/ -_)
 |___/\__|_| |_| .__/\__| |___|_||_\__, |_|_||_\___|
               |_|                 |___/            

EOF

echo "list of categories. Please select any option"

choise1="Shell Python Networking Cryptography General"

select option1 in $choise1;
do
	if [ $REPLY = 1 ];
then 
	echo "You selected shell script"
	./shell.sh
	break

elif [ $REPLY = 2 ]
then 
	echo "You selected python script"
	./python.sh
	break

elif [ $REPLY = 3 ]
then
	echo "You selected Networking script"
	./networking.sh
 	break

elif [ $REPLY = 4 ]
then
	echo "You selected Cryptography"
	./cryptography.sh
	break

elif [ $REPLY = 5 ]
then
	echo "You selected General"
	./general.sh
	break
elif [ $REPLY = 6 ]
then 
	echo "You selected Exploitation"
	./exploitation.sh
	break 
else
	echo "Invaild choise, please choose run the script again"
fi
done
