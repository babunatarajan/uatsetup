#!/bin/bash

OS="centos"
FILE="/etc/redhat-release"
RAM=7000

javainstall(){

}


memcheck(){
free=`free -mt | grep Total | awk '{print $2}'`

if [ $free -lt $RAM ]; then
  echo 'Warning, You do not have sufficient memory to run the setup your memory is '$free'mb'
  exit 0
else
  javainstall
fi

}

oscheck(){

if grep -i -q "$OS" "$FILE"; 
  then
  memcheck
else
  echo "OS not supported"
  echo $(uname -s)
  echo $(uname -r)
  exit 0
fi

}

oscheck
