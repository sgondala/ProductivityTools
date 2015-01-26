#!/bin/bash

a=`wc -l motivationalQuotes | awk '{print $1;}'`
while true
do
for i in $(eval echo {1..$a})
do
b=`sed -n "$i"p motivationalQuotes`
notify-send "$b"
sleep 300 #Change time interval here
done
done
