#!/bin/bash

echo "Please enter your log filename:"
read filename

echo "Please enter start date (e.g 10/Oct/2019):"
read startDate

echo "Please enter end date (e.g 10/Oct/2019):"
read endDate

result=$(sed -n "\#$startDate#, \#$endDate#p" $filename | awk '/HTTP\/1.1"/ {count[$1]++} END {for (host in count) print host, count[host]}' $filename | sort -k2 -nr | head -10 | awk '{ print $1 }')

echo "Top 10 host of HTTP request are: 
$result"
