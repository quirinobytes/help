csvde(1) -- csvde para minhas man pages v1.0
===============================================

NOME
----

`csvde` - csvde de arquivo MarkDown para gerar Man Pages por Rafael Quirino.

SYNOPSIS
--------

`csvde` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`csvde` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `-f` *FILENAME* :
  Usado para informar o nome do arquivo. se náo informado -i, faz o export por padrao.

* `-k`: sKKiping errors
  Usado para executar o importe por exemplo sem erros por exemplo de chave ja existe.

* `-i`: import
  Usado para indicar o import do arquivo.

EXEMPLOS
--------

Fazer o export em um arquivo output.csv no disco C:

   `$> cvsde -f C:\Output.csv'`

Fazer o import do arquivo csv, ignorando caso houver erros.

   `$> cvsde -i -f C:\Output.csv' -k `



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
