# Transparent proxy interception tool
------------------------------------

## Purpose
==========

This is a proxy to perform passive monitoring of a device's network connection. 
I created it as I was fed up with other software (like wireshark) being inadequate for monitoring the target of the request, which is important for some of my tasks in testing devices, without installing monitoring software on them directly.

## Install
==========

Run 
'''console 
install.sh [network adapter] 
''' 
script. Your network adapter can be found with 
'''console
ip a
'''. This installs squid, iptables & dnsutils. It will then copy the squid.conf file and then configure iptables to redirecct port 80 & 443 to 3128.

## Operation
============

Use watch with 
'''console 
view.sh 
''' to view the recent connections. Use
'''console
combine-domains.sh 
''' 
for a list of domains only, as opposed to domains and IP addresses. Use
'''console
log.sh
''' 
to return a log of IP addresses and domains. 
