#!/bin/bash

instructions ()
{
cat << EOF | boxes -d peek
Welcome to Typing Spelling Words Practice!
In this practice you will put the number of words
you want to try and type the given word accordingly. 
EOF

sleep 3 
read -p "How many words? > " number
read -p "Hit the enter if you are ready > "
}

random_words ()
{
  words=$(shuf -n $number /usr/share/dict/words)
  last_word=$(echo $words | tr "\n" " " | awk '{print $NF}')
}

main ()
{
  random_words  

  for word in $words
  do 
    while [ 1 ]
    do
      echo
      read -p "$word > " your_input

      if [ "$word" = "$your_input" ]; then
        if [ "$last_word" != "$your_input" ]; then
          echo "Next!"     
          break
        else
          echo "You completed!"
          break
        fi
      else
        echo "You didn't get it right!!!"
      fi
    done
  done
}


instructions

main
