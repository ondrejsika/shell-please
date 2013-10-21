#!/bin/sh
# Shell Please!
# author: Ondrej Sika, http://ondrejsika.com, ondrej@ondrejsika.com
# source: https://github.com/sikaondrej/shell-please

while true
do
    echo -n "$USER@`cat /etc/hostname`:`pwd`$ "
    read input;
    if echo $input | grep " please$" > /dev/null
    then
        `echo $input | sed s/'\w*$'//`
    else
        echo "must type '$input please'"
    fi
done