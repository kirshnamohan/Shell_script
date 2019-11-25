#!/bin/sh
echo Type,Count,Name
x=0
for f in `cat`
do
   x=`expr $x + 1`
   echo Def,u$x,$f
done
