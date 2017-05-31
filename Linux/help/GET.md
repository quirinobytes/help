GET(1) -- programa de linha de comando para fazer um HTTP GET/POST
===============================================


SYNOPSIS
--------

`GET` [`-opcoes`] [*http://endereço* ]

DESCRIÇÃO
---------

`GET` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `-s`:
	Exibir o retorno do GET, exemplo 200 OK, 404, 401 etc...

* `-u`:
	Exibir a Location(URL) que foi chamada no GET/POST/HEAD/etc.
* `-U`:
	Exibir o User-Agent Utilizado.



EXEMPLOS
--------

Testando a chamada para um pool inteiro com 20 maquinas e saida do retorno.
   `$> GET -u -s http://a4-winter{1..20}/cnx.htm '`


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
