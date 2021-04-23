#!/usr/bin/bash

cat << "EOF"
   ___               _                           _          ___         _      _      
  / __|_ _ _  _ _ __| |_ ___  __ _ _ _ __ _ _ __| |_ _  _  / __| __ _ _(_)_ __| |_ ___
 | (__| '_| || | '_ \  _/ _ \/ _` | '_/ _` | '_ \ ' \ || | \__ \/ _| '_| | '_ \  _(_-<
  \___|_|  \_, | .__/\__\___/\__, |_| \__,_| .__/_||_\_, | |___/\__|_| |_| .__/\__/__/
           |__/|_|           |___/         |_|       |__/                |_|          

EOF

echo "[+] List of Cryptographic Scripts. Please select any option: "

choise_crypto="File-Encrypter-Decrypter Password-Generator SSH-Brute-Force"

select option in $choise_crypto;
do
if [ $REPLY = 1 ];
then 
    echo "[+] Executing FIle encrypter decrypter script..."
    ./cryptography-scripts/file-encrypter-decrypter/encrypt.sh
    break
elif [ $REPLY = 2 ]
then 
    echo "[+] Executing Password generator script..."
    ./cryptography-scripts/password-generator-shell-script/passwordGenerator.sh
    break
elif [ $REPLY = 3 ]
then 
    echo "[+] Executing SSH brute force script..."
    python3 cryptography-scripts/ssh-brute-force/ssh_brute_force.py
    break 
else    
    echo "[!] Invalid option selected."
fi
done