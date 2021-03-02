import socket
from IPy import IP


def scan(target, port_number):
    converted_ip = check_ip(target)
    print(f'\n [*_* Scanning target] {str(target)}')
    for port_number in range(1, port_number):
        scan_port(converted_ip, port_number)


def check_ip(ip):
    try:
        IP(ip)
        return(ip)
    except ValueError:
        return socket.gethostbyname(ip)


def get_banner(s):
    # This "recv" function will recive data
    return s.recv(1024)


def scan_port(ipaddress, port_number):
    # Defining socket discriptor and now we can connect to the internet
    try:
        sock_discriptor = socket.socket()
        sock_discriptor.settimeout(0.5)         # Timeout is of 0.5 seconds
        sock_discriptor.connect((ipaddress, port_number))
        try:
            # Storing the banner graning results in a variable
            banner = get_banner(sock_discriptor)
            print(f'[+] Open Port {str(port_number)} : {srt(banner).decode().strip()}')
        except:
            # In case we don't get any baner
            print(f'[+] OPen Port {str(port_number)} ')
    except:
        pass             


if __name__ == "__main__":

    targets = input("[+] Enter target(s) to scan : (split multiple targets with ,) : ")
    port_number = int(input("[+] Please enter the number of ports you want to scan (500 - First 500 ports) : "))
    if ',' in targets:
        for ip_add in targets.split(','):
            scan(ip_add.strip(' '), port_number)
    else:
        scan(targets, port_number)
