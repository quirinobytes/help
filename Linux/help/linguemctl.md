linguemctl(1) -- Sistema de Email proprietário.
===============================================


SYNOPSIS
--------

`linguemctl` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`linguemctl` é um servidor de email.

OPÇÕES
------

* `linguemctl hs check --detail all `:
	Listar os usuários com status.

* `linguemctl us status alexandre@qualisegco.dominiotemporario.com`
  Use the alternate system wide *config-file* instead of */etc/foo.conf*. This
  overrides any `FOOCONF` environment variable.

* `linguemctl hs version all`:
   Exibir todas as versões dos HS.

* `linguemctl fs list | grep nitro52`:
	Listar a situação dos File Servers do Linguem, filtrando por nitro52.

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
