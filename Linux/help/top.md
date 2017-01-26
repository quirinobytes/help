top(1) -- TOP process do Linux
===============================================


SYNOPSIS
--------

`top` [`-opcoes`] [`-u` *username* ]

DESCRIÇÃO
---------

`top` Usado para exibir o todos os processos que estão sendo executados agora no linux. Em ordem, de CPU/MEM/usuário etc.

OPÇÕES
------

* `-p PID`:
  Exibir apenas o processo de pid = PID.


COMANDOS INTERATIVOS
--------------------

* `a/A`: troca a janela seleciona

* `g1/g2/g3/g4`: Habilita/Desabilita o Grupo de Processos, cada grupo tem uma abordagem de exibição, por memória, processo, etc.

* `1`: Exibir o número de processadores.


EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> top -p `pgrep -d ',' "java|tomcat|redis|mysql|mongo"``


ARQUIVOS
--------

*~/.toprc*
  Arquivos de configuração do Top para o usuário.

DIAGNOSTICS
-----------

The following diagnostics may be issued on stderr:

**Bad magic number.**
  The input file does not look like an archive file.

**Old style baz segments.**
  `foo` can only handle new style baz segments. COBOL object libraries are not
  supported in this version.

COMENTARIOS
-----------

Coloque seus comentários aqui...
<- Tag para comentários na Man Page, juro, não sai nada.>

BUGS
----

The command name should have been chosen more carefully to reflect its
purpose.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
