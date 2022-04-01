#!/bin/bash

prefecture=$1
url="http://wttr.in/$prefecture"
json="$url?format=j1"

temp=$(echo $json | jq -r ."current_condition[0] | (.temp_C)")
echo $temp
#curl $url
