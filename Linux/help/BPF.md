BPF(1) -- BPF Berkley Packge Filter
===============================================

NOME
----

`BPF` - BPF Filtro de Pacotes da universidade de Berkley

SYNOPSIS
--------

`BPF` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`BPF` é muito utilizado para realizar filtros de tráfego de rede em interfaces, aceita vários tipos de filtros, desde os mais simples até filtros com lógicas complexas até de entender.

OPÇÕES
------

* `host A.B.C.D`:
  Filtro para pacotes com IP tal, tanto origem quanto destino.

* `ip`:

* `tcp[13]==2`:
  Filtro para Pacotes SYN.

* `port [1-65536]`:
  Filtra pacotes com partas tal, pode se usar mais de uma: 10-15,22 

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$>host 192.168.0.1 and host 192.168.0.254 and tcp dport 22` 


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
