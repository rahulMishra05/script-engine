# Wifi Scanner

### 📝 About project 

This is a python script, written in python 3. It can be used to discover the host/devices connected to a local wifi network or physical ehternet network.\
***Note:*** *To execute this script you need sudo privilages.*

When you execute this script, you have a enter an IP address range. That IP address range would be checked by using regular expressions that whether it is correct or not. After you enter the valid IP address range, a packet with ARP message will be send to the broadcast mac address `ff:ff:ff:ff:ff:ff`.If a valid ip address range was supplied the program will return the list of all results

### 🗂 Libraries used
1. **Scapy:**  Scapy is a powerful Python-based interactive packet manipulation program and library.
It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them, store or read them using pcap files, match requests and replies, and much more. It is designed to allow fast packet prototyping by using default values that work.\
To install this module use this command `pip3 install scapy`
2. **re:** The Python module re provides full support for Perl-like regular expressions in Python. The re module raises the exception re.error if an error occurs while compiling or using a regular expression.\
In this script it is used to check that whether the entered IP address is valid or not.

### 🧱 How to use
1. First you have to clone/download this repository, you can do that by executing this command in terminal.
    ```shell
    git clone https://github.com/rahulMishra05/wifi-scanner.git
    ```
2. Than change the working directory, to project directory.
    ```shell
    cd wifi-scanner
    ```
3. Now if you use ls command than you can see all the files present in this directory. Among them file named `wifi_scanner.py` is the main file/script.
4. To exeucte this script use a command like this.
    ```shell
    sudo python3 wifi_scanner.py
    ```
    