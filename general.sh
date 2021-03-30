#!/usr/bin/bash

echo "[+] List of General Scripts. Please select any option:"

choise="Password-Generator"

select option in $choise;
do
    if [ $REPLY = 1 ];
then 
    echo "[+] Executing Password generator script..."
    ./general-scripts/password-generator-shell-script/passwordGenerator.sh
    break 
else
    echo "[!] Invalid option selected."
fi 
done