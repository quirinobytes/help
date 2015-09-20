lsof(1) -- lsof open files
===============================================

NOME
----

`lsof` - lsof exibe os files descriptos, ou seja descritores de arquivo, SOCKETS TCP/UDP, etc.

SYNOPSIS
--------

`lsof` [`<OPTIONS>`] [`>` *out-file* ]

DESCRIÇÃO
---------

`lsof` é utiluizado para ver quais programas estão usando os sockets, file descriptors,
arquivos abertos etc, assim caso algum arquivo esteja aberto no sistema, poderá ser facilmente encontrado qual 
programa está usando ele e encerrar esse programa caso necessário, para encerrar programas veja sobre **miniman kill**


OPÇÕES
------

* `-i (tcp/udp/etc)`:
Especifica o tipo do socket tcp/udp/etc


EXEMPLOS
--------

Exibir os socket tcp:

   `$> lsof -i tcp`


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
