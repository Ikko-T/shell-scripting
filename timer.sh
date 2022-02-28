#!/bin/bash

start_time=$(date +%s)
echo "Welcome to my timer"

while [ 1 ]
do
  current_time=$(date +%s)  
  seconds=$((current_time - start_time))
  echo -ne "\rTime: $seconds" 
  sleep 1
done
