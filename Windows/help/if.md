if(1) -- if para minhas man pages v1.0
===============================================

NOME
----

`if` - if usado para testar condições se.

SYNOPSIS
--------

`if` [`exist`] [*filename* ] *action* ...

if exist <insert file name here> <action>

DESCRIÇÃO
---------

`if` é usado para criar condições de teste com ações, para cada condição ou não, executa-se uma ação.

OPÇÕES
------

* `exist`:
	Testa se um arquivo existe, ex. if exist filename.txt type filename.txt
EXEMPLOS
--------

Testar se um arquio existe:
	
	if exist <insert file name here> <action>
   	`$> if exist c:\autoexec.bat notepad c:\autoexec.bat `


Com mais de uma linha usa-se () para abrir e fechar o laço

if exist <insert file name here> (
    rem file exists
) else (
    rem file doesn't exist
)


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
