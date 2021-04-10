# DDoS Script

### 📝 About project
This is a python script that can be used for DDoS attack. The basic functioning of this script is like this.
- First it will connect to the internet using TCP protocol.
- Than it will send the headers to the target.
- At last it will close the connection.
- This process will be repeated multiple times.
- We use threading in this process because without threading this script won't be affective.

💡 **What is DDoS attack?**\
A *distributed denial-of-service (DDoS) attack* is a malicious attempt to disrupt the normal traffic of a targeted server, service or network by overwhelming the target or its surrounding infrastructure with a flood of internet traffic.

### 🗂 Libraries used
1. **Threading:** A thread is a single sequential flow of control within a program. The real excitement surrounding threads is not about a single sequential thread. Rather, it's about the use of multiple threads running at the same time and performing different tasks in a single program.\
Threading module is used for creating, controlling and managing threads in python. This module is used because the password checking of the script was very slow and we have to increase the speed of checking passwords.

2. **Socket:** The Python interface is a straightforward transliteration of the Unix system call and library interface for sockets to Python’s object-oriented style: the socket() function returns a socket object whose methods implement the various socket system calls. Parameter types are somewhat higher-level than in the C interface: as with read() and write() operations on Python files, buffer allocation on receive operations is automatic, and buffer length is implicit on send operations.

### 🧱 How to use
1. First you have to clone/download this repository, you can do that by executing this command in terminal.
    ```shell
    git clone https://github.com/rahulMishra05/DDoS-Script.git
    ```
2. Than change the working directory, and go to project directory.
    ```shell
    cd DDoS-Script
    ```
3. Now if you use ls command than you can see all the files present in this directory. Among them file named `ddos_script.py` is the main file/script.
4. To execute this script use this command.
    ```shell
    python3 ddos_script.py
    ```
5. Than it will prompt a message like this
    ```shell
    [+] Please enter the target IP address: 
    ```
    Here you have to enter the IP address of the target
6. Than a last message will appear, which will look something like this
    ```shell
    [+] Please enter the port number on which you want to perform DDoS attack:
    ```
    Here you have to enter port number of the servcie of the target website on which you want to perform DDoS attack.
7. At last you will get another message, and here you have to enter fake IP.
    ```shell
    [+] Please enter fake IP address:
    ```