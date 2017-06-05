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

Check the date man page for more options.
Returns the real date from epoch time:
date –d @1284127201
Return an epoch time of 1288756800:
date +%s -d “2010-11-03”
Return a 2 days old date:
date --date="-2 days" +"%Y-%m-%d"
Return 20:00 hours:
date -d @1288310401 +%k:%M 

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
