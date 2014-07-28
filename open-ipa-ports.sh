#!/bin/sh
#Open ports needed on a IPA server
#
#https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Linux_Domain_Identity_Authentication_and_Policy_Guide/prerequisites.html#prereq-ports

tcp_ports=( 80 443 389 636 88 464 53 7389 )
udp_ports=( 88 464 53 123 )

for i in "${tcp_ports[@]}"; do
	firewall-cmd --add-port $i/tcp
	firewall-cmd --permanent --add-port=$i/tcp
done;

for i in "${udp_ports[@]}"; do
	firewall-cmd --add-port $i/udp
	firewall-cmd --permanent --add-port=$i/udp
done;
