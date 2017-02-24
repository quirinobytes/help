zabbix(1) -- Monitor de Sistemas e serviços.
===============================================


SYNOPSIS
--------

`zabbix` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`zabbix` é um agent para fazer as leituras dos zabbix agents instalados nos servidores.

OPÇÕES
------

* `-v`:
  Do not write "busy" to stdout while processing.

* `-s` *servidor*:
 Usada para indicar o host com o agent zabbix instalado.

* `-a`:
  In addition to the baz segments, also parse the blurfl headers.

* `-r`:
  Recursive mode. Operates as fast as lightning at the expense of a megabyte
  of virtual memory.

EXEMPLOS
--------

*zabbix_get*

   `$>  zabbix_get -p 10050 -k "vfs.fs.size[C:\,free]" -s 172.17.150.2 `


ARQUIVOS
--------


*/etc/foo.conf*
  The system wide configuration file. See foo(5) for further details.

*~/.foorc*
  Per user configuration file. See foo(5) for further details.

ENVIRONMENT
-----------

`FOOCONF`
  If non-null the full pathname for an alternate system wide */etc/foo.conf*.
  Overridden by the `-c` option.

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
