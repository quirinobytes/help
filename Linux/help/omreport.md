omreport(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`omreport` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`omreport` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

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

Exibir a versão da BIOS:
`$> omreport chassis bios`

Exibir a versão do OMREPORT:
`$> omreport about`

Exibir um sumario do SISTEMA/HW/DELL ou HP ETC:
`$> omreport system summary`

DIAGNOSTICS
-----------

https://cs.uwaterloo.ca/~brecht/servers/docs/PowerEdge-2600/en/Dosa/CLI/cli_cc4r.htm

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
