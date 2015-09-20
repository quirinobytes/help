iperf(1) -- iperf internet performance
===============================================

NOME
----

`iperf` - iperf Usado para realizar testes de performance de tráfedo de rede.

SYNOPSIS
--------

`iperf` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`iperf` é usado na maioria das vezes para simular trafego e para realizar trestes de rede.

Necessita melhorar esse help.

- iperf -s -u -B 224.1.1.1 -i 1

iperf -s -u -B 224.1.1.1 -i 1

iperf -c 224.1.1.1 -u -T 32 -t 5 -i 1

OPÇÕES
------

* `-b`:
  Do not write "busy" to stdout while processing.

* `-c` *config-file*:
  Use the alternate system wide *config-file* instead of */etc/foo.conf*. This
  overrides any `FOOCONF` environment variable.

* `-a`:
  In addition to the baz segments, also parse the blurfl headers.

* `-r`:
  Recursive mode. Operates as fast as lightning at the expense of a megabyte
  of virtual memory.

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> date '%Y/%m/%d'`


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
