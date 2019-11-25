#!bin/bash
USE=`df -PhT | awk NR'2' 0+$6 > 85{print$6+0}'`
if [ $USE -gt 85 ]
echo $USE
else 
echo "NORMAL"
fi
