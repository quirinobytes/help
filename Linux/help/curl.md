curl(1) -- curl - Usado para fazer requisições HTTP, entre uma série de outros recursos.
===============================================


SYNOPSIS
--------

`curl` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`curl` Usado para enviar requisições HTTP/HTTPS/FTP entre outros, muito poderoso.

OPÇÕES
------

* `-6`:
	Usar IPv6.

* `--reoslve` *hostname*:
  Usar a resolução indicada ao invés de consultar o DNS. *hostname* 

* `-I / --head`:
	Mostrar somente as informações de cabeçalho, only.


EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> curl -I -6 --resolve mail.uol.com.br:443:2804:49c:319:430::354 https://mail.uol.com.br/cnx.htm`


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
