lvresize(1) -- model para minhas man pages v1.0
===============================================

NOME
----

`lvresize` - Usado para redimensionar discos Logicos LVM.

SYNOPSIS
--------

`lvresize` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`lvresize` é um programa utilizado para redimencionar, aumentar, diminuir e alterar informações de tamanho de disco.

OPÇÕES
------

* `-l`:
  +X%{VG|LV|PVS|FREE|ORIGIN} O tamanho que terá o volume.

* `-L`:
  Tamanho em bytes, use 10MB ou 10240.

EXEMPLOS
--------

Extender o volume para 100% do espaço livre.

   `$> lvresize -l +100%FREE /dev/volume/logical volume`

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
