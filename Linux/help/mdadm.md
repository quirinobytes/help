mdadm(1) -- mdadm para minhas man pages v1.0
===============================================

NOME
----

`mdadm` - Admin de midia de disco Linux

SYNOPSIS
--------

`mdadm` [`--action`] [*option* ] *dev1* *dev2* ...

DESCRIÇÃO
---------

`mdadm` é um utilitário que permite fazer todo o controle dos discos **RAID** mirror, striped entre outros.

ACTION
------

* `create`:
* `cbuild`:
* `cmanage`:
* `cmisc`:
* `cgrow`:
* `cincremental`:
* `cmonitor`:
* `cdevice`:

* `<options>`:

* `--create </dev/md0\1\2\3>`:
 Usado para criar um mirror 
  	`--level=1`
		Seleciona o tipo do RAID=1 (MIRROR)


EXEMPLOS
--------

Criar um RAID 1 (mirror) de dois discos: sdb e sdc

mdadm --create /dev/md1 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
