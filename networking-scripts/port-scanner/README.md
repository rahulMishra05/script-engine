# Port Scanner

A port scanner is a program that scans a target and tell us that whether the port is open or closed.\
This is a port scanning python script which scan a given IP address or domain name, we can also give group of IP address and domain name to it for scanning.

### 🧱 Libraries

In this script two known libraries are used.
1. [Socket](https://docs.python.org/3/howto/sockets.html) :- Socket library is very known as used library. This library is used to estabilished connection over the internet.
2. [IPy](https://pypi.org/project/IPy/) :- This library is used to handle the IP address.

### ⚒ How to use 

In order to use this library please follow the below instructions.
1. Clone this repository using terminal or git bash.
    ```shell
    git clone https://github.com/rahulMishra05/port-scanner.git
    ```
2. Change your working and go to this project's directory.
    ```shell
    cd port-scanner
    ```
3. Now you can see that there is a python file named as `port_scanner.py` this is our script.
4. To run this script you must have python 3 installed in your machine.
5. Use this command to run this script.
    - If both python 3 and python 2 is installed in your system.
        ```shell
        python3 port_scanner.py
        ```
    - If only python 3 is installed in your system.
        ```shell
        python port_scanner.py
        ```
6. Now you wee see a message like this, 
    ```shell
    [+] Enter target(s) to scan : (split multiple targets with ,) : 
    ```
    Here enter IP address or domian name of the target. *Remember you can enter multiple IP addresses or domain names but they should be sepereated by comma(,)*
7. After that you will see another message, where you have to enter port range to scan
    ```shell
    [+] Please enter the number of ports you want to scan (500 - First 500 ports) :
    ```
8. Now if there is an open port present on the target or group of targets, it will show up.

### 💡 Note

There are some points you should remember while using this script.
1. While entering multiple targets IP address/domain name, make sure to seperate them using comma (,)
2. The ports that will be scanned will be from 1 to the range you specified.
3. In the code at line 29 this is written `sock_discriptor.settimeout(0.5)` this means that this script will try to connect for 0.5 seconds with every port. This has been done to improve the performance of the script. Some ports take more time to respond so in that case it might not be that accurate, so change that accroding to you liking. *But remember that this will increase the time of scan.*