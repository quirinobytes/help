#!/usr/bin/ksh

if [ -z $1 ] ; then
	echo "Digite algum programa para visualizar o help"
else
	if [ -e ~/help/$1 ]; then 
		cat ~/help/$1
	else
		echo "Programa nao existe"
	fi
fi
