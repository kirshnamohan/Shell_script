MAX=50
#MAIL=krishnamohan.shanmugam@sifycorp.com
 
USE=`grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage ""}'`
if [ $USE -gt $MAX ]; then
 #echo "Percent used: $USE" | mail -s "Running out of CPU power" $EMAIL
echo "Percent used: $USE" 
fi
