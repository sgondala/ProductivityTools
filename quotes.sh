#!/bin/bash

a=`wc -l /home/sashank/ProductivityTools/motivationalQuotes | awk '{print $1;}'`
while true
do
for i in $(eval echo {1..$a})
do
b=`sed -n "$i"p motivationalQuotes`
notify-send "$b"
#echo $b
sleep 300
done
done
