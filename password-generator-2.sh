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
  sleep 1 
  
  x=0
  num=/\d/
  while [ $x = 0 ]
  do
    read -p 'Enter the length of a number: ' length
    if [ -z "$length" ] || [  "$num" != "$length" ]; then
       echo "Please enter the number"
    else
       x=1
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
  read -p 'Another new one? (y/n): ' answer
    if [ $answer = 'y' ]; then
      ps_length
      in_process      
    elif [ $answer = 'n' ]; then
      echo ""
      figlet -f rozzo "Have a Good One!"
      exit
    else
      echo "That is not an option"
    fi
done


