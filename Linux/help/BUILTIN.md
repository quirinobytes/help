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
  Arquivo de configuração do shell por usuár

ENVIRONMENT
-----------

`SHELL=bash`
  Para ambiente shell bash com o CDSHELL o arquivo do enviroment lido é o *~/.bashrc* que chama o *.alias* e o *.export*  na sequencia, definindo tudo que é necessário, inclusive outros arquivos fontes, como colors.sh


BUGS
----

Nessa sessao mostro o problema de usar backspace e nao fechar os caracteres nao imprimiveis no PS1:


*Non-printable sequences should be enclosed in \[ and \]*
`\[\033[01;32m\]\u:\[\033[01;34m\] \W\033[01;34m \$\[\033[00m\]`
                   |_____________|               |_|
                          |                       |
                          +--- Let this apply to this as well.

*As such this should have intended coloring:*
`\[\033[1;32m\]\u:\[\033[1;34m\] \W \$\[\033[0m\]`
                                |_____|
                                   |
                                   +---- Bold blue.

*Keeping the "original" this should also work:*
`\[\033[1;32m\]\u:\[\033[1;34m\] \W\[\033[1;34m\] \$\[\033[0m\]`
                                   |_|         |_|
                                    |           |
                                    +-----------+-- Enclose in \[ \]


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
