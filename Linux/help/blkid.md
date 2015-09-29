blkid(1) -- blkid mostra identificador de blocos
===============================================

NOME
----

`blkid` - blkid mostra do tipo do filesystem do sistema de blocos e o ID..

SYNOPSIS
--------

`blkid` [`-OPCOES] [`*/dev/disco*` ]

DESCRIÇÃO
---------

`blkid` é um aplicativo para exibir o tipo do file system do dispositivo de blocos, e seu *ID*.

OPÇÕES
------

* `-o <FORMATO>`:
  Onde o FORMATO pode ser:
- value
- device
- list
- udev
- export
- full

* `-p`:
  fazer o probing a baixo-nivel logico de superblocks, bypass cache.

EXEMPLOS
--------

Consultar o tipo do filesystem do disco /dev/sda

   `$> blkid /dev/sda'`


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
