find(1) --  Localizador de arquivos ou diretórios no file system.
===============================================


SYNOPSIS
--------

`find` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`find`  Usado para localizar arquivos diretórios, links, pode se executar uma série de comandos nele e tem muitos parametros, sem duvida uma excelente ferramenta do GNU.

OPÇÕES
------

* `-type f`:
	Procura somente arquivos (file)


EXEMPLOS
--------

Localiza todos os executáveis a partir do / que não foram instalados pelo RPM:

   `find / -type f -perm +a+x -print0 | xargs -0 rpm -qf | grep file | cut -f2 -d' '`



AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
