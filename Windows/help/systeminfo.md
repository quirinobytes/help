systeminfo(1) -- systeminfo exibe informações de sistema
========================================================

NOME
----

`systeminfo` - systeminfo é utilizado na linha de comando para exibir várias informações referentes ao Sistema Operacional.

SYNOPSIS
--------

`systeminfo` <OPTIONS> *file* ...

DESCRIÇÃO
---------

`systeminfo` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `/FO`:
   Seleciona as opções de Format Output, Formato de Saída entre: LIST, CSV, TABLE.

* `/S <HOSTNAME>`:
   Especifica o hostname a ser executado o comando.

EXEMPLOS
--------

Verificar o horário que o sistema foi iniciado:

   `$> systeminfo | find "Uptime"`


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
