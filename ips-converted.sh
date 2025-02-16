sudo cat /var/log/squid/access.log | grep -Eo "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | sort -u | xargs -I {}  dig +short -x {}  | sed 's/.$//'
