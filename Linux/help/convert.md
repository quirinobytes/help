convert(1) -- Excelente programa do ImageMagick para trabalhar com imagens, parece bem poderoso.
===============================================


SYNOPSIS
--------

`convert` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`convert` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

EXEMPLOS
--------

Execelente forma de ver os codigos das cores e os bytes da imagem e suas posições.:
   `convert lsb.png txt:-`


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

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
