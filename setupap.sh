#!/bin/sh -x
systemctl stop dnsmasq
systemctl stop dhcpcd.service
systemctl stop hostapd
#ip link set wlan0 down && sleep 0
iw dev uap0 del && sleep 0
iw dev wlan0 interface add uap0 type __ap
#iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
ip link set uap0 up
#ip addr add 192.168.50.1/24 broadcast 192.168.50.255 dev uap0
systemctl start hostapd && sleep 0
systemctl start dhcpcd && sleep 0
systemctl start dnsmasq  && sleep 0

#iw dev wlan0 set power_save off
#ip link set wlan0 promisc on
#ip link set wlan0 up
