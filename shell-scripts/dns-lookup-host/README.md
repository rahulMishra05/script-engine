# DNS Lookup using Host command

This is a script that performs **DNS** lookup using the `host` command.

The `host` command is a simple tool used to perform DNS lookups in Linux. It is usually used to resolve a hostname into an IP address or vice-versa.

### 🧱 Usage
*If you want to use this script to perform DNS lookups than follow the below steps.*
1. Clone this repository to your machine, for that use this command in terminal.
    ```shell
    git clone https://github.com/rahulMishra05/dns_lookup_host.git
    ```
2. Now, when you have succesfully cloned this repository move to the project folder, like this 
    ```shell
    cd dns_lookup_host/
    ```
3. Now to list all the files use `ls` command, and you will see these files in the directory.
    ```shell
    README.md
    script.sh
    ```
    Among them [README.md](https://github.com/rahulMishra05/dns_lookup_host/blob/main/README.md) is the markdown file and [script.sh](https://github.com/rahulMishra05/dns_lookup_host/blob/main/script.sh) is the main project file contaning the script.
4. Now its time that we can run this script, to do that execute the [script.sh](https://github.com/rahulMishra05/dns_lookup_host/blob/main/script.sh) file in the terminal, like this 
    ```shell
    ./script.sh
    ```
    - After executing this script file you will see a message on the terminal, like this 
        ```shell
        Please enter the DNS of the website: 
        ```
        ![Example-1](images/image1.png)
    - Than you have to enter the DNS *(name of the webiste)*, I had entered google.com like this 
        ![Example-2](images/image2.png)
    - And then you will see the results.

### 💡 About the script
This is a shell script, which contains some command inside it, that give users the desired output. 

**Let's understand about this script in detail.**
1. When you execute the script it asks for the DNS name and store the input provided by the user into a variable `$dnsName`.
2. Than first thing that is displayed are the details of the IP address, and the command that is used to do that is 
    ```shell
    host $dnsName
    ```
3. Second thing which is displayed on the terminal is SOA records for the zone name form all the listed authoritative name servers for that zone. 
The list of name servers is defined by the NS records that are found for the zone.
Command used to do that is 
    ```shell
    host -C $dnsName
    ```
4. Third thing which is displayed is verbous/detaied output for the host command, by using this command 
    ```shell
    host -d $dnsName
    ```
    We can use `-d` flag and `-v` flag to display verbous output.
5. Forth thing which is displayed tells us about the name servers explicitly, and for that we use this command 
    ```shell 
    host -t ns $dnsName
    ```
    Here `ns` flag is used to get the details of the name server, and `-t` flag is used to specify the type of query.
6. Fifth and last thing which will be displayed on the terminal is txt records, and for it we will use this script.
    ```shell
    host -t txt $dnsName
    ```
    Here again `-t` flag is used to specify the type of query and `txt` flag is used to get text records.

