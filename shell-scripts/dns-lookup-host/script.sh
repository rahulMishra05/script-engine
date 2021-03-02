#!/usr/bin/bash

# This is a script that uses host command and find the details related to the domnain name

# Declaring variables for colour the output message
NONE='\033[00m'
GREEN='\033[01;32m'
UNDERLINE='\033[4m'
YELLOW='\033[01;33m'
BOLD='\033[1m'

# Asking for the domain name form the user
echo -e "${BOLD}${YELLOW}Please enter the DNS or IP address of the website:${NONE}${NONE} \c"
read dns_name

# Displaying the  details of the IP address for the entered domain name
echo ""
echo -e "${UNDERLINE}${GREEN}Displaying IP address details of the specified domain${NONE}${NONE}"
echo ""
host $dns_name

# When the -C option is used, host will attempt to display the SOA records for zone name from all the listed authoritative name servers for that zone. The list of name servers is defined by the NS records that are found for the zone.
echo ""
echo -e "${UNDERLINE}${GREEN}Displaying SOA records for the zone name form all the listed authorative name servers.${NONE}${NONE}"
echo ""
host -C $dns_name


# Verbous output is generated when we use -d or -v flag
echo ""
echo -e "${UNDERLINE}${GREEN}Verbous output${NONE}${NONE}"
echo ""
host -d $dns_name

# -t is used to specify the type of query and ns is used to get the details of the name server explicitly
echo ""
echo -e "${UNDERLINE}${GREEN}Displaying the name servers for the entred domain name${NONE}${NONE}"
echo ""
host -t ns $dns_name

# To print txt records 
echo ""
echo -e "${UNDERLINE}${GREEN}Displaying the text record for the given domain name${NONE}${NONE}"
echo ""
host -t txt $dns_name





















