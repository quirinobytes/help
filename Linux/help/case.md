case(1) -- comando para selecionar varias condições
===================================================

NOME
----

`case` - é um comando utilizado para escolher entre multiplas opções.

SYNOPSIS
--------

`case` $VARIAVEL in

	casoA) comandos
		;;
	casoB) comandos
		;;
	*) 	comandos
		;;
	esac

DESCRIÇÃO
---------

`case` é um comando utilizado para escolher entre várias opções, quando necessário, pode-se passar varias opções para ele escolher, e executar uma lista de comandos em caso dessa opção ser encontrada, ou executar uma opção geral para outras todas opções que nao forem encontradas

EXEMPLOS
--------

Escolher entre casoA ou casoB, e se nao encontrar execute o comando seguinte.
`$> case $VARIAVEL in
    casoA) 
        comandos
        ;;
   
    casoB) 
        comandos_1
        comandos_2
        ;;
    *)
        comandos
        ;;
esac`


Procurar uma string dentro de outra string usando um recurso do proprio POSIX
`#!/bin/sh
CURRENT_DIR=`pwd`

case "$CURRENT_DIR" in
  *String1*) echo "String1 present" ;;
  *String2*) echo "String2 present" ;;
  *)         echo "else" ;;
esac`



AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
