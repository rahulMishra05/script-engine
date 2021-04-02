# Vulnerability Scanner

### 📝 About project
This is a vulnerability scanner script, this script is written in python to be specific python3.\
Vulnerability scanner is a computer program, designed to access computers, networks or websities for knonw weaknesses. In plain words this scanner is used to discover weakness in the given system. 

### 🧮 Working
- First you need to enter the IP address of the target.
- Than you have to enter the number of ports that you want to scan for. On these scaned ports this script will check whether they are vulnerabler or not.
- This vulnerability scanner script uses another port scanning script to scan for the open ports. If you want to use only that port scanning script/tool, you can find it [here](https://github.com/rahulMishra05/port-scanner) this is the repository of that port scanning tool. 
- Last thing you need to enter is the locaiton/name of the file which contains list of all vulnerability.
- There is a file in this respository named [vulnerability_list.txt.gz](https://github.com/rahulMishra05/vulnerability-scanner/blob/main/vulnerability_list.txt.gz), this is a huge list of vulnerabilities. You can also find this file [here](https://cve.mitre.org/data/downloads/allitems.txt.gz).

### 🧱 How to use 
1. First you have to clone/download this repository, you can do that by executing this command in terminal.
    ```shell
    git clone https://github.com/rahulMishra05/vulnerability-scanner.git
    ```
2. Than change the working directory, and go to project directory.
    ```shell
    cd vulnerability-scanner
    ```
3. Now if you use `ls` command than you can see all the files present in this directory. Among them file named `vulnerability_scanner.py` is the main file/script.
4. To execute the vulnerability scanner use this command.
    ```shell
    python3 vulnerability_scanner.py
    ```
5. Than it will prompt a message like this 
    ```shell
    [+] Enter target to scan for vulnerable open ports :
    ```
    Here you have to enter the target IP address or domain name.
6. After this you will get another message like this 
    ```shell
    [+] Enter number of ports you want to scan (500 - First 500 ports) :
    ```
    Where you have to enter number of ports that you want to scan for vulnerabilities.
7. Than a last message will appear, which will look something like this 
    ```shell
    [+] Enter path of the file with vulnerable software list : 
    ```
    Here you have to enter the location/name of the file which consists of list of known vulnerabilities.
8. There is a file in this repository contaning the list of known vulnerabilities, name of that file is *vulnerability_list.txt.gx*. It is compressed usign a tool **gzip**, in order to use this list in the program you have to unzip this file, and you can do that by executing this command.
    ```shell
    gzip -d vulnerability_list.txt.gz 
    ```

