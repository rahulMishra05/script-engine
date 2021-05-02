#!/usr/bin/bash

cat << "EOF"
 ___  __  __    ___     __  _  _  ____     __  __  ___  _  _    ___   __  ___   __  ___  ____ 
(  _)(  )(  )  (  _)   / _)( )( )(_  _)   / _)/  \(  ,\( \/ )  / __) / _)(  ,) (  )(  ,\(_  _)
 ) _) )(  )(__  ) _)  ( (_  )()(   )(    ( (_( () )) _/ \  /   \__ \( (_  )  \  )(  ) _/  )(  
(_)  (__)(____)(___)   \__) \__/  (__)    \__)\__/(_)  (__/    (___/ \__)(_)\_)(__)(_)   (__) 

EOF

echo "[*] Please make a chooise, what you want to do?"

choise1="Copy-File Cut-File"

select option1 in $choise1;
do
    if [ $REPLY = 1 ];
then 
    echo "[*] You selected to copy file from one place to another."
    echo ""
    echo -e "[+] Enter full path of your file: \c"
    read fileName
    echo -e "[+] Enter path of directory, where you want to copy this file: \c"
    read copyDirectory

    cp $fileName $copyDirectory
    echo ""
    echo "[#] File successfully copied to $copyDirectory."
    
    break

elif [ $REPLY = 2 ]
then 
    echo "[*] You selected to move file from one place to another."
    echo ""
    echo -e "[+] Enter full path of your file: \c"
    read fileName
    echo -e "[+] Enter path of directory, where you want to move this file: \c"
    read cutDirectory

    mv $fileName $cutDirectory || mv -r $fileName $cutDirectory
    echo ""
    echo "[#] File successfully moved to $cutDirectory"

    break

else
    echo "[X] Invalid choosie. !!"
fi 
done