#!/usr/bin/ksh


VAR=$1

if [ -z $VAR ] ; then
     echo "Digite algum nome de programa para visualizar o help"
else
	if [ -e ~/help/$VAR.hlp ]; then
        	cat ~/help/$VAR.hlp
        else
                echo "Programa nao encontrado no diretório ~/help/"
	fi
fi

