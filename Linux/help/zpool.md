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
  Adiciona um disco ao pool de discos.

* `status -v <POOL>`:
  Exibe o status da `POOL`.

* `replace <POOL> <DEVICE>`:
  Com esse comando é possível trocar o disco usado *DEVICE*, após isso será refeito o silvering, após o silvering basta executar o comando novamente passando o novo dispositivo que será substituido.

* `detach <POOL> <DEVICE>`:
  Retirar um disco *device* do *POOL*

* `scrub rpool`:
  Faz um scrub do disco, isso faz tipo uma checagem dos CHECKSUMS
  **recomenda-se fazer o *SCRUBING* pelo menos uma vez ao mês.**

* `create mypool mirror /dev/da2 /dev/da3`:
  Cria um 2 discos no formato *mirror*

* `create mypool mirror /dev/da2 /dev/da3 mirror /dev/da4 /dev/da5`:
  Cria dois mirrors somados de 2 discos cada. um mirror (da2,da3) mais outro mirror(da4,da5).

* `create mypool raidz2 /dev/ada0p3 /dev/ada1p3 /dev/ada2p3 /dev/ada3p3 /dev/ada4p3 /dev/ada5p3`:
  Cria um RAID Z2 com todos esses discos

* `clear <POOL>`:
  Limpa erros que por ventura ocorreram no disco.

* `create healer mirror /dev/ada0 /dev/ada1`:
  Esse comando permite criar um SELF-HEALER, auto-cura, isso permite que o próprio sistema faça a checagem dos checksums dos blocks, quando esse não bate ele automaticamente recupera as informações do disco.

* `export <HEALER>`:
  Esse comando permite que o *HEALER* seja exportado.

* `status <HEALER>`:
  Exibe o status do *HEALER*.

* `scrub <HEALER>`:
  Faz o scrub do *HEALER*.

* `clear <HEALER>`:
  Faz a limpeza dos erros no *HEALER*


* `export <POOL>`:
  Faz o export da POOL

* `import`:
  Exibe os possíveis pools não utilizados e que podem ser importados.

* `import -o altroot=/mnt mypool`:
  Faz o import do POOL em um diretório alternativo de root

EXEMPLOS
--------

Exibir as informações do pool:

   `$> zpool status -v`


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

*DEGRADED*

Quando um disco entra no modo **DEGRADED** é possível substitui-lo com o seguinte comando:
`$> zpool replace mypool 316502962686821739 ada2p3`   onde esse numero é o numero que aparece no disco zuado, quando executado zpool status

`$> zpool status`
 NAME                    STATE     READ WRITE CKSUM
        mypool                  DEGRADED     0     0     0
          mirror-0              DEGRADED     0     0     0
            ada0p3              ONLINE       0     0     0
            316502962686821739  UNAVAIL      0     0     0  was /dev/ada1p3

*ONLINE*
  Significa que o disco está ONLINE, e sem problemas de replicação.

*UNAVAIL*
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
