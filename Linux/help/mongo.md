mongo(1) -- cliente de conexao com o MongoDB Server
===============================================


SYNOPSIS
--------

`mongo` [`-OPCOES`] [`-c` *config-file* ] *ip-host*

DESCRIÇÃO
---------

`mongo` é um cliente para conectar e gerenciar seu servidor de banco de dados MongoDB.

OPÇÕES
------

* `-h`:
	IP/Hostname do servidor

EXEMPLOS
--------

		- Usar Base da dados *carros*:
`use carros`

	- Exibir as collections, após escolher qual database quer:
`show dbs`

	- Igual a db.getCollectionNames()
`show collections`

	- Após o primeiro passo, já poderemos inserir dados na nossa database faculdade e em qual collection eu desejar, lembrando que collection tem uma função parecida com as tabelas dos bancos relacionais.:
`db.collection.insert(json);`


ARQUIVOS
--------


*/etc/foo.conf*
  The system wide configuration file. See foo(5) for further details.

*~/.foorc*
  Per user configuration file. See foo(5) for further details.

ENVIRONMENT
-----------

`FOOCONF`
  If non-null the full pathname for an alternate system wide */etc/foo.conf*.
  Overridden by the `-c` option.

DIAGNOSTICS
-----------

The following diagnostics may be issued on stderr:

**Bad magic number.**
  The input file does not look like an archive file.

**Old style baz segments.**
  `foo` can only handle new style baz segments. COBOL object libraries are not
  supported in this version.

COMENTARIOS
-----------

Coloque seus comentários aqui...
<- Tag para comentários na Man Page, juro, não sai nada.>

BUGS
----

The command name should have been chosen more carefully to reflect its
purpose.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
