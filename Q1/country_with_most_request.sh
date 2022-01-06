#!/bin/bash

echo "Please enter your log filename:"
read filename

result=$(awk '/HTTP\/1.1"/ {count[$1]++} END{for (host in count) print host, count[host]}' $filename | sort -k2 -nr | head -1 | awk '{ print $1 }')
country=$(curl --silent ipinfo.io/$result | grep -IE country | cut -d ':' -f 2 | xargs | sed 's/,/ /g')

echo "Country with most http request is: $country"
