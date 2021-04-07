# ARP Spoofing

### 📝 About project
This is a python script written using python3. If you want to perform ARP spoofing you can use this script.

**What is ARP spoofing ?**\
In computer networking, ARP spoofing, ARP cache poisoning, or ARP posion routing, is a technique by which an attacker sends Address Resolution Protocol message onto a local area network.\
This technique is commonly used by an attacker while performing *Man in the Middle (MitM) attack* to intercept communication between network devices.

### 🗂 Libraries used
1. **Scapy:** Scapy is a powerful Python-based interactive packet manipulation program and library.\
It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them, store or read them using pcap files, match requests and replies, and much more. It is designed to allow fast packet prototyping by using default values that work.\
To install this module use this command `pip3 install scapy`
2. **Time:** The Python time module provides many ways of representing time in code, such as objects, numbers, and strings. It also provides functionality other than representing time, like waiting during code execution and measuring the efficiency of your code. 
3. **Sys:**  The sys module in Python provides various functions and variables that are used to manipulate different parts of the Python runtime environment. It allows operating on the interpreter as it provides access to the variables and functions that interact strongly with the interpreter.
4. **Tremcolor:** This module is used to print coloured ASCII characters on the terminal in output.

### 🧱 How to use
1. First you have to clone/download this repository, you can do that by executing this command in terminal.
    ```shell
    git clone https://github.com/rahulMishra05/ARP-spoofing.git
    ```
2. Than change the working directory, to project directory.
    ```shell
    cd ARP-spoofing
    ```
3. Now if you use ls command than you can see all the files present in this directory. Among them file named `arp_spoofer.py` is the main file/script.
4. To exeucte this script use a command like this.
    ```shell
    python3 arp_spoofer.py 8.8.8.8 5.5.5.5
    ```
    Here first IP address is the IP address of the router and second IP address is the IP address of the target.
5. ***Note:*** *If you are unable to execute this script than try to execute it as root user, for that you have two options*
    - First that you change your shell to root shell and than use the command mentioned above to use this script. You can simply change you shll to root shell using this command.
        ```shell
        sudo bash
        ```
    - Second way to use this script is by running it as sudo, command for that is like this.
        ```shell
        sudo python3 arp_spoofer.py 8.8.8.8 5.5.5.5
        ```
6. ***Note:*** *If after spoofing, the target machine cannot use the internet this means that we have successfully spoofed the target machine, but we are not forwarding the packets. So to remove this problem run this command before executing the python script.*
    ```shell
    echo 1 >> /proc/sys/net/ipv4/ip_forward
    ```