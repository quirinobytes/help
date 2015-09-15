zpool(1) -- zpool ZFS Pool utility Manager
===============================================

NOME
----

`zpool` - zpool usado para gerenciar pool de discos no ZFS.

SYNOPSIS
--------

`zpool` [`<OPTIONS>`] [`POOL` *device* ] *file* ...

DESCRIÇÃO
---------

*ZFS* é um tipo de filesystem moderno que veio para substituir os sistema tipo LVM no Linux, pois ele simplifica muito além de ser muito mais eficiente e robusto na questão da segurança dos dados.
`zpool` é uma aplicação utlizada para gerenciar piscina(pool) de discos, com ele é possível criar, excluir, adicionar e fazer toda a manutenção de um pool de arquivos **ZFS**. Veja mais em zfs(1).

OPÇÕES
------

* `attach <POOL> <DEVICE>`:

* `status -v <POOL>`:
  Exibe o status da `POOL`.

* `replace <POOL> <DEVICE>`:
  Com esse comando é possível trocar o disco usado *DEVICE*, após isso será refeito o silvering, após o silvering basta executar o comando novamente passando o novo dispositivo que será substituido.

* `detach <POOL> <DEVICE>`:
  Retirar um disco *device* do *POOL*

* `scrub rpool`:
  Faz um scrub do disco, isso faz tipo uma checagem dos CHECKSUMS

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> date '%Y/%m/%d'`


ARQUIVOS
--------


*/etc/foo.conf*
  The system wide configuration file. See foo(5) for further details.

*~/.foorc*
  Per user configuration file. See foo(5) for further details.

ENVIRONMENT
-----------

$ zfs set compression=on mysqlpool
$ zfs set dedup=on mysqlpool
$ zfs set atime=off mysqlpool


DIAGNOSTICS
-----------

Criei um script para fazer o scrub do ZFS, está na pasta de CDSHELL/script/ZFS

**Bad magic number.**
  The input file does not look like an archive file.

**Old style baz segments.**
  `foo` can only handle new style baz segments. COBOL object libraries are not
  supported in this version.

COMENTARIOS
-----------

Coloque seus comentários aqui...
<- Tag para comentários na Man Page, juro, não sai nada.>

Segundo o site prefetch.net é possível fazer um tunning dos scrubs com os seguintes comandos

In particular, the “zfs:zfs_scrub_delay” (I believe) defines the # of seconds to pause a scrub if there’s I/O in the pool. If you set this to 0, then the scrub will go to town regards of activity on the pool. For example, I have the following line in my /etc/system file to set this tuneable:
set zfs:zfs_scrub_delay = 0x1

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
