#!/bin/bash

free=`free -mt | grep Total | awk '{print $2}'`

if [ $free -lt 14000 ]; then
        echo 'Warning, You do not have sufficient memory to run the setup your memory is '$free'mb'
fi
