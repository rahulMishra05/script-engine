#!/usr/bin/bash

echo "[+] List of Cryptographic Scripts. Please select any option: "

choise_crypto="File-Encrypter-Decrypter Password-Generator"

select option in $choise_crypto;
do
if [ $REPLY = 1 ];
then 
    echo "[+] Executing FIle encrypter decrypter script..."
    bash ../cryptography-scripts/file-encrypter-decrypter/encrypt.sh
    break
elif [ $REPLY = 2 ]
then 
    echo "[+] Executing Password generator script..."
    bash ../cryptography-scripts/password-generator-shell-script/passwordGenerator.sh
    break
else    
    echo "[!] Invalid option selected."
fi
done