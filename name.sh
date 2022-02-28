#! /bin/bash

echo "What is your name?"
read name
if [ $name ]; then
  echo "$name sounds alright to me"
else
  echo "Doesn't sound like anything to me"
fi

