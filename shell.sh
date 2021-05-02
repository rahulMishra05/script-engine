#!/usr/bin/bash

cat << "EOF"
  ___ _        _ _   ___         _      _      
 / __| |_  ___| | | / __| __ _ _(_)_ __| |_ ___
 \__ \ ' \/ -_) | | \__ \/ _| '_| | '_ \  _(_-<
 |___/_||_\___|_|_| |___/\__|_| |_| .__/\__/__/
                                  |_|                                              
EOF

echo "[+] List of Shell Scripts. Please select any option:"

choise="DNS-Lookup File-Encrypter-Decrypter Password-Generator File-Cut-Copy-Script"

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
elif [ $REPLY = 4 ]
then 
    echo "[+] Executing File cut copy script..."
    ./shell-scripts/file-cut-copy-script/script.sh
    break 
else
    echo "[!] Invalid option selected."
fi
done