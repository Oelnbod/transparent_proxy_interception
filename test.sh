sudo cat /var/log/squid/access.log | grep -Eo '([[:alnum:]-]+\.)+[[:alpha:]]{2,}|([0-9]{1,3}\.){3}[0-9]{1,3}' | grep -v '\.json' | sort -u | awk '
NR==FNR {tlds[$1]; next} 
{
    n = split($0, a, ".")
    if (a[n] in tlds) {
        print $0    
    } 
    else if ($0 ~ /^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$/) {
        print $0                               
    }
}'
