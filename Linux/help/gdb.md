gdb(1) -- GNU Debugger
===============================================


SYNOPSIS
--------

`gdb` [`-opcoes`] [`-c` *core-dump* ] *binario*
     roff: ./gdb.1                                    
DESCRIÇÃO
---------

`gdb`  Usado para debugar problemas no binário e fazer engenharia reversa.


OPÇÕES
------

* `-c` *core-dump*:
	Analisa o arquivo core dump gerado pelo erro da execução da aplicação.

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> gdb ./binario -c core-dump'`

ARQUIVOS
--------


*/var/log/core-dump*
  Pasta no sistema onde ficam os arquivos de core-dump, pode mudar de sistema para sistema.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
