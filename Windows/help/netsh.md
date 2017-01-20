netsh (1) -- netsh do windows 
===============================================

NOME
----

`netsh` - netsh usado para executar ações a nível de rede no Windows..

SYNOPSIS
--------

`netsh` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`netsh` é um comando que pode realizar uma série de ações a nível de rede, exemplo criar roteamento entre portas, criar uma rede AD HOC.

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

Criar uma rede Ad Hoc no Windows 8 e iniciá-la:

   `$> netsh wlan set hostednetwork mode=allow ssid=NomedaRede key=SuaSenha'`
   `$> netsh wlan start hostednetwork'`
   `$> netsh wlan stop hostednetwork'`

Exibir as regras do **portproxy**
	`$> mongodb://dev1/API`

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

help(5), miniman(1), info(1) [Windows Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
