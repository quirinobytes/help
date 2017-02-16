sysctl(1) -- System Control
===============================================


SYNOPSIS
--------

`sysctl` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`sysctl` é um comando usado para gerenciar argumentos de Kernel.

OPÇÕES
------

* `-A`:
  Exibir todas as configurações do kernel.

* `-p`:
  Exibir somente as configurações que foram alteradas.

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> sysctl -A | grep somaxconn'`


ARQUIVOS
--------


*/etc/sysctl.conf*
  Arquivos de configuração dos parametros do kernel.

cat /proc/sys/net/core/somaxconn
/proc/sys/ipv4/* -> configurações de kernel para IPv4.*

ENVIRONMENT
-----------



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
