systemctl(1) -- System State - Controlador de Estados do Sistema
===============================================


SYNOPSIS
--------

`systemctl` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`systemctl` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `systemctl is-failed`:
	Mostra as units que falharam.

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

Listar as units:
`systemctl list-unit-files --type=service`

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

Systemd is able to handle various different service types specifically one of the following

*simple* - A long running process that does not background its self and stays attached to the shell.

*forking* - A typical daemon that forks itself detaching it from the process that ran it, effectively backgrounding itself.

*oneshot* - A short lived process that is expected to exit.

dbus - Like simple, but notification of processes startup finishing is sent over dbus.

*notify* - Like simple, but notification of processes startup finishing is sent over inotify.

*idle* - Like simple, but the binary is started after the job has been dispatched.

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
