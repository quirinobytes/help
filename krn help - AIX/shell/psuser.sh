#!/usr/bin/ksh


VAR=$1

if [ -z "$VAR" ] ; then
	echo "Digite um nome de usuário para verificar os processos"
else
 	ps aux | awk '{ if ( $1 == "'$VAR'" ) print }' 
fi




