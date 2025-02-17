sudo apt install squid iptables dnsutils -y
cp squid.conf /etc/apt/squid.conf
sudo iptables -t nat -A PREROUTING -i $1 -p tcp --dport 80 -j REDIRECT --to-port 3128
sudo iptables -t nat -A PREROUTING -i $1 -p tcp --dport 443 -j REDIRECT --to-port 3128
