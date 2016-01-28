mysqldump(1) -- mysqldump para minhas man pages v1.0
===============================================

NOME
----

`mysqldump` - mysqldump faz o dump da database MySQL

SYNOPSIS
--------

`mysqldump` [`-options`] [*database* ] >  *file-mysql.dump*

DESCRIÇÃO
---------

`mysqldump` usado para realizar uma série de comandos sobre dump da database.

OPÇÕES
------

* `-u usuario`:
  Usado para indicar o usuário a se conectar no banco.
* `-p` [*config-file*]:
  Usado para definir a senha a ser utilizada, senha pode ser digitada. [opcional]

EXEMPLOS
--------

Fazendo o dump da database com o usuário root e a senha 123mudar, salvando no arquivo.mysql.dump.
   `$> mysqldump -uroot -p123mudar database > arquivo.mysql.dump`


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

mysql(1) [Linux Man Page Howto](http://www.schweikhardt.net/man_page_howto.html)
