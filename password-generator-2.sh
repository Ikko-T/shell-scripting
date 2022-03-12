#!/bin/bash

dot ()
{
  while [ 1 ]
  do
     echo -ne "."
     sleep 0.2
  done
}

generate_password ()
{ 
  < /dev/urandom LC_CTYPE=C tr -dc _A-Z-a-z-0-9 | head -c$length
}

in_process ()
{
   rand_num=$((2 + $RANDOM % 10))
   password=$(generate_password)
   echo -n "Password being generated"
   
   dot &
   pid=$!
 
   for i in `seq 1 $rand_num`
   do
      sleep 1
   done
   
   kill $pid
   wait $pid 2> /dev/null
   echo ""
   echo "Your password: ${password}"
   sleep 0.5
}

ps_length ()
{
  echo ""
  sleep 0.5 
  
  x=0
  while [ $x = 0 ]
  do
    read -p 'Enter the number length: ' length
    if [[ "$length" =~ ^[0-9]+$ ]]; then
      x=1
    else
      echo "Please enter the number"
    fi
  done
}

cat << END
Welcome to a Password Shop!

We generate a random alphanumeric password for you.
You can set up the length of a number for the password.
END

ps_length

in_process

while [ 1 ]
do
  read -p 'Do you want new different one? (y/n): ' answer
    if [ $answer = 'y' ]; then
      ps_length
      in_process      
    elif [ $answer = 'n' ]; then
      echo ""
      figlet -f rozzo "Have a Good One!"
      exit
    else
      echo 2> /dev/null
      echo "That is not an option"
    fi
done
