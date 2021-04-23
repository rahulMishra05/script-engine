#!/usr/bin/bash

cat << "EOF"
   ___                       _   ___         _      _      
  / __|___ _ _  ___ _ _ __ _| | / __| __ _ _(_)_ __| |_ ___
 | (_ / -_) ' \/ -_) '_/ _` | | \__ \/ _| '_| | '_ \  _(_-<
  \___\___|_||_\___|_| \__,_|_| |___/\__|_| |_| .__/\__/__/
                                              |_|          

EOF

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