iscsiadm(1) -- iscsiadm iSCSI Admin 
===============================================

NOME
----

`iscsiadm` - iscsiadm é um cliente para acesso e mapeamento de discos iSCSI..

SYNOPSIS
--------

`iscsiadm` [`-m MODE`] [`-p` *ip* ] *iface*


DESCRIÇÃO
---------

`iscsiadm` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

- MODE:

* `discovery`:
  Usado para descobrir os targets iqn.

* `-t st` :
  Usado para .

* `-p`:
  IP do Storage ou servidor de ISCSI.


EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> iscsiadm -m discovery -t st -p 192.168.45.145 `

O retorno é algo parecido com isso:

192.168.45.145:3260,1 iqn.2006-01.com.openfiler:tsn.73ef1a2e5abf
192.168.45.145:3260,1 iqn.2006-01.com.openfiler:tsn.acc51ecccc11


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

iscsid(1), iscsi-utils(1), [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
