#!/bin/bash
for i in `cat rb_activity.txt`; do echo $i ; echo '------------' ; ssh -i sifyadmin.pem sifyadmin@$i "uptime" ; done
