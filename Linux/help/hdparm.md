hdparm.md(1) -- Programa para ler informaçoes do HD
===============================================


SYNOPSIS
--------

`hdparm.md` [`-opcoes`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`hdparm.md` 

OPÇÕES
------


EXEMPLOS
--------


   `$>hdparm -giI /dev/hda | tee /tmp/hdparm.txt`

DIAGNOSTIC
----------

Luttgens allows you to mount a complete disk image
as a loopback device instead of only one partition
• Download from
ftp://ftp.hq.nasa.gov/pub/ig/ccd/enhanced_loopback/
--
National Institute of Standards and Technology
• Includes primarily “known good” files, but does
include “Hacker Tools” as well
• Download from ftp://ftp.nist.gov/pub/itl/div897/




AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ddfldd(), sfdisk(1), nsrl(1) [Linux Man Page Howto](http://www.schweikhardt.net/man_page_howto.html), [NASA Enhanced Loopback Drivers](http://www.sleuthkit.org/)
