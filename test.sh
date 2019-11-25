#!/bin/bash
clear
ssh -i sifyadmin.pem sifyadmin@$1 'bash -s' < cpu.sh
