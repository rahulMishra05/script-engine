#!/usr/bin/bash

echo "[+] List of all Networking Scripts. Please select any option:"

choise="ARP-Spoofing DNS-Lookup Port-Scanner WiFI-Scanner DDoS-Script"

select option in $choise;
do
    if [ $REPLY = 1 ];
then 
    echo "[+] Executing ARP spoofing script..."
    python3 networking-scripts/ARP-spoofing/arp_spoofer.py
    break
elif [ $REPLY = 2 ]
then 
    echo "[+] Executing DNS Lookup script..."
    ./networking-scripts/dns-lookup-host/script.sh
    break
elif [ $REPLY = 3 ]
then 
    echo "[+] Executing Port scanner script..."
    python3 networking-scripts/port-scanner/port_scanner.py 
    break
elif [ $REPLY = 4 ]
then 
    echo "[+] Executing Wifi scanner script..."
    echo "[+] This script needs sudo privilages!!"
    echo ""
    sudo python3 networking-scripts/wifi-scanner/wifi_scanner.py
    break
elif [ $REPLY = 5 ]
then 
    echo "[+] Executing DDoS attack script..."
    python3 networking-scripts/DDoS-Script/ddos_script.py
    break
else
    echo "[!] Invalid option selected."
fi
done
