#!/bin/bash
#read -p "Enter Source IP: "  i
cat sam.txt | ssh -i sifyadmin.pem sifyadmin@$1
