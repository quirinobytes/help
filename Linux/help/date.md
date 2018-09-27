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
* `%s`:
	Exibe o TIMESTAMP, numero de segundos passados depois de 1970.


*dow*
	- é o dia da semana, no seu caso Sat(sábado)

*mon*
	- é o mês, o Feb(fevereiro) do seu resultado

*dd*
	- é o dia do mês representado como dois dígitos, de 01 a 31, no seu caso dia 26

*hh* 
	- é a hora do dia, com valores de 00 até 23, o 11 da sua saída.

*mm*
	- é a representação, também em dois dígitos, do minuto, o 38 da sua saída

*ss*
	- é o segundo, novamente representado em dois dígitos, de 00 até 61

*zzz* 
	- é o time zone, o BRT da sua saída, podendo ser vazio, se não estiver disponível

*yyyy*
	- é o ano, em quatro dígitos, como o 2015






EXEMPLOS
--------

Exemplos de data:


   `$> date +%d-%m-%Y`
	14-03-2017

   `$> date +'%B'`
	March

   `$> date +%D`
	03/14/17


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
