#!/usr/bin/bash

echo "[+] List of all Networking Scripts. Please select any option:"

choise="ARP-Spoofing DNS-Lookup Port-Scanner"

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
else
    echo "[!] Invalid option selected."
fi
done
