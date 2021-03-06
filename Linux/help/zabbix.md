zabbix(1) -- Monitor de Sistemas e serviços.
===============================================


SYNOPSIS
--------

`zabbix` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`zabbix` é um agent para fazer as leituras dos zabbix agents instalados nos servidores.

OPÇÕES
------

* `-v`:
  Do not write "busy" to stdout while processing.

* `-s` *servidor*:
 Usada para indicar o host com o agent zabbix instalado.

* `-a`:
  In addition to the baz segments, also parse the blurfl headers.

* `-r`:
  Recursive mode. Operates as fast as lightning at the expense of a megabyte
  of virtual memory.

EXEMPLOS
--------

*zabbix_get*

   `$>  zabbix_get -p 10050 -k "vfs.fs.size[C:\,free]" -s 172.17.150.2 `

ARQUIVOS
--------

*/etc/zabbix.conf*
  Arquivo de configuração do zabbix.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

zabbix_get(1), zabbix(1), zabbix agent(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
