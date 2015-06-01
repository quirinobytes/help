iconv(1) -- iconv Conversor de arquivos
===============================================

NOME
----

`iconv` - programa de conversão de codificação de texto.

SYNOPSIS
--------

`iconv` [`-bar`] [`-c` *config-file* ] *arquivo* ...

DESCRIÇÃO
---------

`iconv` é um programa para converter codificação de arquivos, exemplo UTF-8 ISO-8859-1 Western bla bla bla...

OPÇÕES
------

* `-f` *file-encode*:
  (from) Define tipo do arquivo de origem.
* `-t` *file-encode*:

EXEMPLOS
--------

* converte o arquivo.txt para UTF-8

	`iconv -f utf-8 -t ucs-4 < arquivo.txt >/dev/null`

ARQUIVOS
--------

*arquivo.txt*
  O arquivo utilizado como entrnada.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
