strace(1) -- Stack Trace
===============================================


SYNOPSIS
--------

`strace` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`strace` Usado para visualizar as chamadas de system call de um determinado processo.

OPÇÕES
------

* `-b`:
  Do not write "busy" to stdout while processing.

* `-c` *config-file*:
  Use the alternate system wide *config-file* instead of */etc/foo.conf*. This
  overrides any `FOOCONF` environment variable.

* `-tt`:
	Colocar tempo e microsegundos.

* `-T`:
	Tempo de execuçao da systemcall *bom para pegar os delays*.

* `-p <PID>`:
	Executar o system trace para determinado PID.

* `-S <time/calls/name/nothing>`:
	Organizar syscall por time/calls/name/nada

* `-e expr`:
	Permite usar expressoes para filtrar.

EXEMPLOS
--------
	
	O -e faz filtro na syscall especifica tipo NETWORK:
`$> strace -p pid -e trace=network -s 0`

	O -e faz filtro na syscall especifica tipo READ/WRITE:
`$> strace -p pid -e trace=read,write -s`

	Pegar a systemcall que faz chamadas a funcao SELECT:
`$> strace -e select -p <PID>`

	Pegar 2(DUAS) systemcall ao mesmo tempo:
`$>strace -e select,rt_sigprocmask	-p <PID>`

	Filtrar systemcall FUTEXT:
`$>strace -e futex	-p <PID>`

	Filtrar systemcall OPEN:
`$>strace -e open 	-p <PID>`


	Strace THREADS em uma linha:
`$>strace -f -o strace.out `ls /proc/<pid>/task/ | xargs -n 1 echo -n " -p"`


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
