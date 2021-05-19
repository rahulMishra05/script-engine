#!/usr/bin/bash

# HTTP(S) status checking shell script

# Taking the list of subdomains from the user
echo -e "[+] Please enter subdomain list name/path : \c"  
read file_name

i=1  
while read subdomain; 
do  
  
#Reading each line  
response=$(curl -Is $subdomain | head -1)

echo "[*] Response for subdomain $subdomain is => $response"
 
i=$((i+1))  
done < $file_name