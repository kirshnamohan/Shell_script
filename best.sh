#!/bin/bash
echo "Enter Mount Point Name:"
read disk
echo $disk > mount_point.txt

ssh -i sifyadmin.pem sifyadmin@$1 'bash -s' < disk2.sh
