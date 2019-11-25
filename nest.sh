#!/bin/bash
ssh -i sifyadmin.pem sifyadmin@$1 'bash -s' < load.sh
