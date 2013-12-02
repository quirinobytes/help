#!/usr/bin/ksh

if [ -z $1 ] ; then
        echo "Digite algum programa para visualizar o help"
else
                cat ~/help/$1
fi

