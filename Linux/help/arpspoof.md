arpspoof(1) -- arpspoof Forjador de pacotes ARP
===============================================

NOME
----

`arpspoof` - Fazer spoof de pacotes ARP na rede local.

SYNOPSIS
--------

`arpspoof` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`arpspoof` é utilizado para realizar o spoof de pacotes ARP, que só pode ser realizado dentro de uma rede local.
  Dessa forma o atacante envia pacotes de resposta ao IP solicitado com seu MAC ADDRESS, recebendo todo o tráfego do alvo.

OPÇÕES
------

arpspoof -i <INTERFACE> -t <IP_DO_ALVO> <IP_QUE_SEU_ALVO_VAI_MAPEAR_PARA_SEU_MAC>

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> date '%Y/%m/%d'`


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
