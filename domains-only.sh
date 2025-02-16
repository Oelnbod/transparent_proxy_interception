sudo cat /var/log/squid/access.log | grep -Eo '([[:alnum:]-]+\.)+[[:alpha:]]{2,}' | grep -Ev '\.json|\.css|\.png|\.ico|\.js|\.htm|\.xml|\.svg|\.ttf|\.cgi' | sed 's/\www\.//g' | sort -u
