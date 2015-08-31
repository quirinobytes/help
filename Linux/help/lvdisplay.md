lvdisplay(1) -- lvdisplay exibe LVM
===============================================

NOME
----

`lvdisplay` - lvdisplay é usado para exibir informações sobre as unidades LVM.

SYNOPSIS
--------

`lvdisplay` [`-opcoes`] [`-v` *volume-name* ] 

DESCRIÇÃO
---------

`lvdisplay` é usado para exibir e visualizar as informaçoes de disco de unidades lógicas LVM, permite visualizar detalhes como tamanho físico dos blocos fisicos, o tamanho do PP e PF, etc. 

OPÇÕES
------

* `-v`: verbose

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> lvdisplay -v `


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
