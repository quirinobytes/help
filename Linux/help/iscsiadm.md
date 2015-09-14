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

* `node`:
  Usado para se tornar ou nao um no que usa o Target IQN ou nao usa.

- OPCOES:

* `-t st` :
  Usado para .

* `-p`:
  IP do Storage ou servidor de ISCSI.

* `--portal <IP>`: 
   Usado para indicar o endereço IP do servidor que tem o Portal para conexão.


* `--login`: 
   Usado para fazer o login no target iSCSI, basta mandar um fdisk -l para ver o disco já entregue para o SO.

* `--logout`: 
   Usado para fazer o logout no target iSCSI, dessa forma o disco é removido do SO.

* `--targetname <IQN>`:
   Usado para indicar o nome do target IQN a ser utilizado, use o modo de discovery unido a opção de 


EXEMPLOS
--------

Para descobrir os targets IQN que existem para determinado portal:

   `$> iscsiadm -m discovery -t st -p 192.168.45.145 `

O retorno é algo parecido com isso:

192.168.45.145:3260,1 iqn.2006-01.com.openfiler:tsn.73ef1a2e5abf
192.168.45.145:3260,1 iqn.2006-01.com.openfiler:tsn.acc51ecccc11


Para logar em um target e poder usa-lo.

    `$ iscsiadm -m node --targetname "iqn.2007-09.com.google.www:disk0" --portal "192.168.1.250:3260" --login `
o retorno é algo parecido com isso:`
Logging in to [iface: default, target: iqn.2007-09.com.google.www:disk0, portal: 192.168.1.250,3260] (multiple)
Login to [iface: default, target: iqn.2007-09.com.google.www:disk0, portal: 192.168.1.250,3260] successful.
`

Para deslogar para mandar o logout no final
    `$ iscsiadm -m node --targetname "iqn.2007-09.com.google.www:disk0" --portal "192.168.1.250:3260" --logout `


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

iscsid(1), iscsi-utils(1), [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
