date(1) - Manipular datas
===============================================

SYNOPSIS
--------

`date` [`-conta de tempo`] [` *OPCOES* ]

DESCRIÇÃO
---------

`date` Usado para exibir a data e hora de acordo com os parametros, seguem os mais utilizados.

OPÇÕES
------

* `%d`:
	Exibe o dia como numero, ex: 23
* `%m`:
	Exibe o mes como numero, ex: 12
* `%Y`:
	Exibe o dia como numero, ex: 2016
* `%y`:
	Exibe o ano como numero, ex: 16



EXEMPLOS
--------

Exemplos de data:


   `$> date +%d-%m-%Y`
	14-03-2017

   `$> date +'%B'`
	March

   `$> date +%D`
	03/14/17


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
