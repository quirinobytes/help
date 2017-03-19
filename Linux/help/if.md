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

* `-d`: se é um diretório

* `-e`: se existe

* `-z`: se é vazio

* `-f`: se contem texto.

* `-r`: se o arquivo possui permissão de leitura

* `-w`: se o arquivo possui permissão de escrita.

* `-x`: se o arquivo é executavel.

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
