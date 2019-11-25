#!/bin/bash
#read -p "Enter Source IP: "  i
cat cpu.txt | ssh -i sifyadmin.pem sifyadmin@$1
