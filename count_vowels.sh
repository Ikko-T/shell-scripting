#!/bin/bash

str="$*"
vowels="$(echo "$str"|grep -oi "[aeiou]")"

echo "$vowels"
