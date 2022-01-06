#!/bin/bash

echo "Please enter your log filename:"
read filename

result=$(grep "HTTP\/1.1\"" $filename | wc -l)

echo "Total number of HTTP request is: $result"
