#!/bin/bash

for i in $(seq 10 -1 0)
do
  echo -ne "\r$i"
  sleep 1
done

echo ""
figlet -f rozzo -w 50 -c  "Happy New Year"
