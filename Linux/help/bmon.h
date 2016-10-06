bmon(1) -- usado para monitorar o consumo de banda nas interfaces de rede.
===============================================


SYNOPSIS
--------

`bmon` [`OPCAO`]

DESCRIÇÃO
---------

`bmon` é usado para exibir o tráfego de rede de forma grafica separada e intuitiva, um dos melhores programas que já vi para isso.

OPÇÕES
------

* `-o` *ncurses:graph=2*:
   	Exibe usando 2 graficos, interessante essa funcao.

* `-i` interval:
	Exibe com intervalo de X segungos.

EXEMPLOS
--------

Listar os modulos disponiveis.

   `$> bmon -o list ` 

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
