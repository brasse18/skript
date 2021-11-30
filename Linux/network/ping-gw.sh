#!/bin/sh
echo "192.168.0.3"
sudo nping --icmp --dest-mac 34:ba:9a:20:ea:95 8.8.8.8
echo "192.168.0.2"
sudo nping --icmp --dest-mac 34:ba:9a:20:1e:87 8.8.8.8
echo "192.168.0.1"
sudo nping --icmp --dest-mac 34:ba:9a:26:21:f9 8.8.8.8
