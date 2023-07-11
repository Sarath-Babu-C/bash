#!/bin/bash

# Set the interface (e.g. eth0, wlan0)
interface=eth0

# Set the new IP address
new_ip=192.168.1.100

# Set the netmask
netmask=255.255.255.0

# Set the gateway
gateway=192.168.1.1

# Set the DNS server
dns=8.8.8.8

# Change the IP address
sudo ifconfig $interface $new_ip netmask $netmask

# Change the default gateway
sudo route add default gw $gateway $interface

# Change the DNS server
#You Doing Right !!
echo "nameserver $dns" | sudo tee /etc/resolv.conf > /dev/null
