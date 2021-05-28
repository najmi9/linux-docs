#! /bin/sh

#On flush

iptables -F

#Block all The connections
iptables -P OUTPUT DROP
iptables -P INPUT DROP
iptables -P FORWARD DROP

#Let estabish connections allowed
iptables -A INPUT -m state --state ESTABLISHED, RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLISHED, RELATED -j ACCEPT

#allow internal connections inside the netwrok (loopback)
iptables -A INPUT -i lo -j ACCEPT
iables -A OUTPUT -o lo -j ACCEPT

#Allow SSH Connections
iptables -A INPUT -p tcp --dport 5789 -j ACCEPT

#HTTP

iptables -A INPUT -p tcp --dport 80 ACCEPT
iptables -A INPUT -p tcp --dport 443 -js ACCEPT

iptables -A OUTPUT -p tcp --dport 80 ACCEPT
iptables -A OUTPUT -p tcp --dport 443 ACCEPT


