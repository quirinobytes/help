bc(1) -- binary calculator
===============================================


SYNOPSIS
--------

`bc` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`bc` é usado como uma calculadora, pode calcular com várias casas decimais.

OPÇÕES
------

* `scale=2;expressao`:
	Indica para usar 2 casas decimais para calcular a expressao.

EXEMPLOS
--------

Usando entrada de dados na linha de comando com <<<

   `$> A=12 ; bc <<< "scale=2;$(($A/5))" '`

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
