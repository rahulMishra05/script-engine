import socket
from IPy import IP


class PortScan():
    banners = []
    open_ports = []

    def __init__(self, target, port_num):
        self.target = target
        self.port_num = port_num


    def scan(self):
        for port in range(1,500):
            self.scan_port(port)


    def check_ip(self):
        try:
            IP(self.target)
            return(self.target)
        except ValueError:
            return socket.gethostbyname(self.target)


    def scan_port(self, port):
        # Defining socket discriptor and now we can connect to the internet
        try:
            converted_ip = self.check_ip()
            sock_discriptor = socket.socket()
            sock_discriptor.settimeout(0.5)       # Timeout is of 0.5 seconds
            sock_discriptor.connect((converted_ip, port))
            self.open_ports.append(port)
            try:
                # Storing the banner grabing results in a function
                banner = sock_discriptor.recv(1024).decode().strip('\n').strip('\r')
                self.banners.append(banner)
            except:
                self.banners.append(' ')
            # Close the connection
            sock_discriptor.close()
        except:
            pass






