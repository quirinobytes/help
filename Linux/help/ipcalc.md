ipcalc(1) -- Usado para calcular Endereçamento de IP.
===============================================


SYNOPSIS
--------

`ipcalc` [`-ip`] [*/MASCARA * ]

DESCRIÇÃO
---------

`ipcalc` é um comando usado para fazer calculos de endereços IP com a Mascara e exibir os endereços iniciais e finais de uma rede.

OPÇÕES
------


EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> ipcalc IP/MASCARA'`


ENDEREÇOS
---------

Notação CIDR Máscara Nº IPs

-------------- ----------------- -------------
/0             0.0.0.0           4.294.967.296



endereço de classe A -----------
/8             255.0.0.0         16.777.216    (começa com 8 bits 1)


endereços de classe B -----------
/16            255.255.0.0       65.536        (começa com 16 bits 1)
/20            255.255.240.0     4096          (começa com 20 bits 1)
/21            255.255.248.0     2048          (começa com 21 bits 1)
/22            255.255.252.0     1024          (começa com 22 bits 1)
/23            255.255.254.0     512           (começa com 23 bits 1)


endereços de classe C -----------
/24            255.255.255.0     256           (e assim por diante...)
/25            255.255.255.128   128
/26            255.255.255.192   64
/27            255.255.255.224   32
/28            255.255.255.240   16
/29            255.255.255.248   8
/30            255.255.255.252   4
/31            255.255.255.254   2
/32            255.255.255.255   1

COMENTARIOS
-----------

Coloque seus comentários aqui...
<- Tag para comentários na Man Page, juro, não sai nada.>

BUGS
----

The command name should have been chosen more carefully to reflect its
purpose.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
