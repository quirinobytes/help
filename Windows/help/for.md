for(1) -- for para minhas man pages v1.0
===============================================

NOME
----

`for` - for de arquivo MarkDown para gerar Man Pages por Rafael Quirino.

SYNOPSIS
--------

`for` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`for` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------


EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> for /f %x in ('some command') do ... `


`$> FORFILES /P C:\WINDOWS /S /M DNS *.*`

`$> FORFILES /S /M *.txt /C "cmd /c type @file | more"`

`$> FORFILES /P C:\ /S /M *.bat`

`$> FORFILES /D -30 /M *.exe
        /C "cmd /c echo @path 0x09 was changed 30 days ago"`

`$> FORFILES /D 01/01/2001
             /C "cmd /c echo @fname is new since Jan 1st 2001"`

`$> FORFILES /D +24/7/2013 /C "cmd /c echo @fname is new today"`

`$> FORFILES /M *.exe /D +1`

`$> FORFILES /S /M *.doc /C "cmd /c echo @fsize"`

`$> FORFILES /M *.txt /C "cmd /c if @isdir==FALSE notepad.exe @file"`

ARQUIVOS
--------

ENVIRONMENT
-----------
DIAGNOSTICS
-----------
COMENTARIOS
-----------
BUGS
----
AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

help(5), miniman(1), info(1) [Windows Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
