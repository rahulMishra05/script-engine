#!/usr/bin/bash

echo "[+] List of all Python Scripts. Please select any option:"

choise="ARP-Spoofing Password-Sniffer Port-Scanner Vulnerability-Scanner SSH-Brute-Force WiFi-Scanner"

select option in $choise;
do
    if [ $REPLY = 1 ];
then 
    echo "[+] Executing ARP spoofing script..."
    python3 python-scripts/ARP-spoofing/arp_spoofer.py 
    break
elif [ $REPLY = 2 ]
then 
    echo "[+] Executing Password sniffer script..."
    python3 python-scripts/password-sniffer/password_sniffer.py 
    break
elif [ $REPLY = 3 ]
then 
    echo "[+] Executing Port scanner script..."
    python3 python-scripts/port-scanner/port_scanner.py
    break
elif [ $REPLY = 4 ]
then 
    echo "[+] Executing Vulnerability scanner script..."
    python3 python-scripts/vulnerability-scanner/vulnerability_scanner.py
    break
elif [ $REPLY = 5 ]
then 
    echo "[+] Executing SSH brute force script..."
    python3 python-scripts/ssh-brute-force/ssh_brute_force.py
    break 
elif [ $REPLY = 6 ]
then 
    echo "[+] Executing Wifi scanner script..."
    echo "[+] This script needs sudo privilages!!"
    echo ""
    sudo python3 python-scripts/wifi-scanner/wifi_scanner.py
    break
else
    echo "[!] Invalid option selected."
fi
done

