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
  Non-zero -> Teste se náo for nulo, veja se a var contém algo pelo menos.
q
* `-z`:
  Verifica se a variável foi setada, pode até ser vazia.
* `-e`:
  Verifica se o *arquivo* existe.

* `-d`:
  Verifica se o diretório existe.


EXAMPLES
--------

Comparando uma variável se está vazia.

	`if [ -n $USER ]; then
	
		echo "Sou o:$USER"
	else
		echo "Não sou ninguém"
	fi`

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
