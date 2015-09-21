lvcreate(1) -- lvcreate cria Volume Logicos
===============================================

NOME
----

`lvcreate` - lvcreate usado para criar Volumes Lógicos em cima dentro de Volume Groups.

SYNOPSIS
--------

`lvcreate` [`-opcoes`] [`-n` *LOGICAL-VOLUME-NAME* ] *volume_groups* ...

DESCRIÇÃO
---------

`lvcreate` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `-l 100%FREE`:
  Usa 100% do espaço livre para criar o Volume Lógico.


EXEMPLOS
--------

Criar o volume lógico com 100% do espaço livre no VG:

   `$> lvcreate VOLUME_GROUP -L 100%FREE -n LOGICAL_VOL_NAME`


ARQUIVOS
--------


*/etc/foo.conf*
  The system wide configuration file. See foo(5) for further details.

*~/.foorc*
  Per user configuration file. See foo(5) for further details.


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
