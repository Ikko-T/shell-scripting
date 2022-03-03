#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Missing sentences..."
  echo " Usage: $0 <Your sentence here>"
  echo " Example: $0 This is an Example"
  exit 1
fi

str="$*"
vowels="$(echo "$str"|grep -oi "[aeiou]")"
count="$(echo -n "$vowels"|wc -l)"
vowels="$(echo "$vowels"|tr "\n" ",")"

echo "'$str' has "$count" vowels."
echo -e "They are:\n$vowels"
