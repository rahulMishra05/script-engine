# Password Generator using Shell Scripting

### 📝 About project

This is a password generator shell script. By usign this script you can generate very good password and that password also have very good complexity.

This script generates the password using **openssl**. OpenSSL is a robust, commercial-grade, and full-featured toolkit for the _Transport Layer Security (TLS)_ and _Secure Socket Layer (SSL)_ protocols. It is also a general-purpose cryptography library. 

In this script I had used `-base64` encoding to genrating the password, it means that the password that will generate from this script will of `-base64` encoding. The range of `-base64` is 48 characters and the password that will generate will be generated randomly from these 48 characters.

### 🧱 How to use this sctipt

1. First you have to clone/download this repository. You can clone the respository by running this command in ternimal

    ```shell
    git clone https://github.com/rahulMishra05/password_generator_shell_script.git
    ```
2. Than go in the project directory like this
    ```shell
    cd password_generator_shell_script
    ```
3. Now simply run the script present in this directory, like this
    ```shell
    ./passwordGenerator.sh
    ```