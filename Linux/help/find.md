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

 Procura somente arquivos (file)
* `-type f`:

 Procurar somente diretorios do primeiro nivel, ou seja os subdiretórios filhos, nao os filhos dos filhos.
* `-type d -mindepth 1`:

 Procurar somente diretorio até MAX nivel.
* `-type d -maxdepth 5`:


EXEMPLOS
--------

- Localiza todos os executáveis a partir do / que não foram instalados pelo RPM:

   `$> find / -type f -perm +a+x -print0 | xargs -0 rpm -qf | grep file | cut -f2 -d' '`


- Localizar arquivos mais velhos que 1 Ano:

	`$> find /dir/to/start -type f -mtime +365 -ls`

- Apagar arquivos mais velhos que 2 ANOS:

	`$> find /path/to/files/ -type f -mtime +365 -ls -exec rm -f -- {} \;`


*SECURITY*

find / -perm 766 | grep backup

find / -perm 777 


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
