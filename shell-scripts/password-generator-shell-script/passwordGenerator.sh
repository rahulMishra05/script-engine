#!/usr/bin/bash

# Simple password generator using openssl 

# Variable declaration for color
NONE='\033[00m'
RED='\033[01;31m'

# Welcome message 
echo -e "${RED}THIS IS A SIMPLE PASSWORD GENERATOR${NONE}"

# Ask for the length from the user
# Here \c is used to keep the cursor on the same line and if we do not use -e flag than \c will also get printed 
echo -e "Please enter the length of the password you want : \c"
read PASS_LENGTH  # Store the password length entered by the user here
echo " "

for p in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
	# Here we are using openssl for generating secure password.
	# To generate random numbers and character we use the rand keyword
	# We are using -base64 encoding to genrate password and also using entire range of 48
	# Then we are had written command to genrarte the password of the length limited to the password lenght specified by the user
done 

