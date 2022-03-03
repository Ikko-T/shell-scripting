#!/bin/bash

str="$*"
vowels="$(echo "$str"|grep -oi "[aeiou]")"
count="$(echo -n "$vowels"|wc -l)"
vowels="$(echo "$vowels"|tr "\n" ",")"

echo "'$str' has "$count" vowels."
echo -e "They are:\n$vowels"
