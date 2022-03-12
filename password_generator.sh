#!/bin/bash

#length=30
#
#randpw()
#{ 
#  < /dev/urandom LC_CTYPE=C tr -dc _A-Z-a-z-0-9 | head -c$length
#}
#
#randpw
#
#echo ""
#
#number=32
#
#randpw_2()
#{
#  openssl rand -base64 $number
#}
#
#randpw_2
#
#echo ""
#
#length=20
#number=2
#
#randpw_3()
#{
#  LC_CTYPE=C tr -cd '[:alnum:]' < /dev/urandom | fold -w$length | head -n$number 
#}
#
#randpw_3
