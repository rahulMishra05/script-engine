#!/usr/bin/bash

echo "Script Engine"

echo "list of categories. Please select any option"

choise1="Shell Python Networking Cryptography General"

select option1 in $choise1;
do
	if [ $REPLY = 1 ];
then 
	echo "You selected shell script"
	./modules/shell.sh
	break

elif [ $REPLY = 2 ]
then 
	echo "You selected python script"
	./modules/python.sh
	break

elif [ $REPLY = 3 ]
then
	echo "You selected Networking script"
	./modules/networking.sh
 	break

elif [ $REPLY = 4 ]
then
	echo "You selected Cryptography"
	./modules/cryptography.sh
	break

elif [ $REPLY = 5 ]
then
	echo "You selected General"
	break
elif [ $REPLY = 6 ]
then 
	echo "You selected Exploitation"
	break 
else
	echo "Invaild choise, please choose run the script again"
fi
done
