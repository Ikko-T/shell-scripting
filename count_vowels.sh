#!/bin/bash

str="$*"
vowels="$(echo "$str"|grep -oi "[aeiou]")"
count="$(echo "$vowels"|wc -w)"

echo "$vowels"
