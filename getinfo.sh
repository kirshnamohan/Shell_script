#!/bin/bash
echo -n "Name: "
uname -n
echo -n "IP: "
ifconfig | grep "inet addr" | grep -v 127.0.0.1 | awk '{print $2}' | awk -F: '{print $2}'
echo -n "CPUs: "
grep "physical id" /proc/cpuinfo | sort | uniq | wc -l
echo -n "Cores: "
grep "^processor" /proc/cpuinfo | wc -l
echo -n "Processor speed (MHz): "
grep MHz /proc/cpuinfo | sort | awk '{print $NF}' | uniq -c
echo -n "Disk(s): "
fdisk -l | grep Disk
echo -n "OS: "
uname -o -r
if [ -f /etc/redhat-release ]; then
    echo -n "  "
    cat /etc/redhat-release
fi
echo -n "Memory: "
grep MemTotal /proc/meminfo | awk '{print $2,$3}'
dmidecode --type 17 | grep Size
echo -n "Up for: "
uptime | awk '{print $3,$4,$5}'
echo -n "Manufacturer: "
lshal | grep system\.hardware | grep "vendor" | grep -v video | awk -F\' '{print $2}'
echo -n "Model: "
lshal | grep system\.hardware | grep "product" | grep -v video | awk -F\' '{print $2}'
