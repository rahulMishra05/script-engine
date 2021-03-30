#!/usr/bin/bash

echo "[+] List of Shell Scripts. Please select any option:"

choise="DNS-Lookup File-Encrypter-Decrypter Password-Generator"

select option in $choise;
do
    if [ $REPLY = 1 ];
then 
    echo "[+] Executing DNS Lookup script..."
    ./shell-scripts/dns-lookup-host/script.sh
    break
elif [ $REPLY = 2 ]
then
    echo "[+] Executing File encrypter decrypter script..."
    ./shell-scripts/file-encrypter-decrypter/encrypt.sh 
    break
elif [ $REPLY = 3 ]
then 
    echo "[+] Executing Password generator script..."
    ./shell-scripts/password-generator-shell-script/passwordGenerator.sh
    break
else
    echo "[!] Invalid option selected."
fi
done