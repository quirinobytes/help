BULTIN(1) -- Funções embutidas do shell (bash)
===============================================


SYNOPSIS
--------

`bash` [`--help`]

DESCRIÇÃO
---------

`BULTIN` é um documento que mostra algumas funções embutidas do shell.

OPÇÕES
------

EXEMPLOS
--------

	Pegar o tamanho da variável.

	`size=${#myvar} $ echo $size`

ARQUIVOS
--------

*~/.bashrc*
  Arquivo de configuração do shell por usuário.

ENVIRONMENT
-----------

`SHELL=bash`
  Para ambiente shell bash com o CDSHELL o arquivo do enviroment lido é o *~/.bashrc* que chama o *.alias* e o *.export*  na sequencia, definindo tudo que é necessário, inclusive outros arquivos fontes, como colors.sh

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
