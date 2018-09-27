if(1) -- testa e executada alguma função
==========================================

NOME
----

if - realiza um teste e pode executar algo caso verdade ou falso.

SYNOPSIS
--------

`if` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`if` é uma ferramenta do shell para teste de condições, em caso de verdadeiro ele executa alguma função.

OPÇÕES
------

* `-n`:
  Non-zero -> Testar se a variável existe, se nao é nulo [NOT NULL].

* `-z`:
  Verifica se a variável foi setada, pode até ser vazia.
* `-e`:
  Verifica se o *arquivo* existe.

* `-d`:
  Verifica se o diretório existe.

* `-eq`: igual

* `-ne`: diferente

* `-gt`: maior

* `-ge`: maior ou igual

* `-lt`: menor

* `-le`: menor ou igual

* `-d`: se é um diretório que existe.

* `! -d`: se esse diretório nao existe.

* `-e`: se existe

* `-z`: se é vazio

* `-f`: se contem texto.

* `-r`: se o arquivo possui permissão de leitura

* `-w`: se o arquivo possui permissão de escrita.

* `-x`: se o arquivo é executavel.

	   -b FILE
              FILE exists and is block special

       -c FILE
              FILE exists and is character special

       -d FILE
              FILE exists and is a directory

       -e FILE
              FILE exists

       -f FILE
              FILE exists and is a regular file

       -g FILE
              FILE exists and is set-group-ID

       -G FILE
              FILE exists and is owned by the effective group ID

       -h FILE
              FILE exists and is a symbolic link (same as -L)

       -k FILE
              FILE exists and has its sticky bit set

       -L FILE
              FILE exists and is a symbolic link (same as -h)

       -O FILE
              FILE exists and is owned by the effective user ID

       -p FILE
              FILE exists and is a named pipe

       -r FILE
              FILE exists and read permission is granted

       -s FILE
              FILE exists and has a size greater than zero

       -S FILE
              FILE exists and is a socket

       -t FD  file descriptor FD is opened on a terminal

       -u FILE
              FILE exists and its set-user-ID bit is set

       -w FILE
              FILE exists and write permission is granted

       -x FILE
              FILE exists and execute (or search) permission is granted


EXAMPLES
--------

Comparando uma variável se está vazia.

	`if [ -n $USER ]; then
	
		echo "Sou o:$USER"
	else
		echo "Não sou ninguém"
	fi`

       `if [ -z "$1" ]                           # Is parameter #1 zero length?
   `then
     echo "-Parameter #1 is zero length.-"  # Or no parameter passed.
   else
     echo "-Parameter #1 is \"$1\".-"
   fi

   variable=${1-$DEFAULT}                   #  What does
   echo "variable = $variable"              #+ parameter substitution show?
                                            #  ---------------------------
                                            #  It distinguishes between
                                            #+ no param and a null param.`

   `if [ "$2" ]
   then
     echo "-Parameter #2 is \"$2\".-"
   fi`



Procurar uma string dentro de outra string, igual no case so que lá usa POSIX.

`#!/bin/bash
CURRENT_DIR=$(pwd)

if [[ "$CURRENT_DIR" =~ "String1" ]]
then
 echo "String1 present"
elif [[ "$CURRENT_DIR" =~ "String2" ]]
then
 echo "String2 present"
else
 echo "Else"
fi`



Comparando se um eh mais novo q o outro.



NOTES
-----
Comparisons:
-eq	equal to
-ne	not equal to
-lt	less than
-le	less than or equal to
-gt	greater than
-ge	greater than or equal to

File Operations:
-s	file exists and is not empty
-f	file exists and is not a directory
-d	directory exists
-x	file is executable
-w	file is writable
-r	file is readable





AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
