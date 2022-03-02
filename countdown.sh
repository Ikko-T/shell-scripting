#!/bin/bash

for i in $(seq 10 -1 1)
do
  echo -ne "\r$i"
  sleep 1
done

figlet -f doh  "Happy New Year"
