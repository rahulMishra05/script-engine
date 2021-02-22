#!/usr/bin/bash

echo "Script Engine"

echo "list of categories. Please select any option"

choise1="Shell Python Networking Cryptography General"

select option1 in $choise1;
do
	if [ $REPLY = 1 ];
then 
	echo "You selected shell script"
	break

elif [ $REPLY = 2 ]
then 
	echo "You selected python script"
	break

elif [ $REPLY = 3 ]
then
	echo "You selected Networking script"
	break

elif [ $REPLY = 4 ]
then
	echo "You selected Cryptography"
	break

elif [ $REPLY = 5 ]
then
	echo "You selected General"
	break
else
	echo "Invaild choise, please choose run the script again"
fi
done
