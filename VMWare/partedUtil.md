
partedUtil(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`partedUtil` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`partedUtil` é usado para particionar os discos da ESX.


OPÇÕES
------

* `partedUtil showGuids`:

* `partedUtil fix /dev//dev/disks/t10.ATA_____ST500LM012_HN2DM500MBB___________________S2ZAJ5ED915226______`:
* `partedUtil fixGPT */dev//dev/disks/t10.ATA_____ST500LM012_HN2DM500MBB___________________S2ZAJ5ED915226______`:
* `partedUtil getUsableSectors /dev//dev/disks/t10.ATA_____ST500LM012_HN2DM500MBB___________________S2ZAJ5ED915226______`:
* `partedUtil get /dev//dev/disks/t10.ATA_____ST500LM012_HN2DM500MBB___________________S2ZAJ5ED915226______`:


EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> partedUtil *showGuids*`


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
