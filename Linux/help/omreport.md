omreport(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`omreport` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`omreport` é usado para coletar informações do hardware.

OPÇÕES
------

	about	->	Shows version number and properties for the Server Administrator program.
	chassis	->  Shows a general status for all main components.
	storage	->  See "omreport: Using the Storage Reports."
	system  ->  Shows a high-level summary of system components.
	rac     ->  See "omreport rac: Viewing Remote Access Controller Components."


EXEMPLOS
--------

Exibir a versão da BIOS:
`$> omreport chassis bios`

Exibir a versão do OMREPORT:
`$> omreport about`

Exibir um sumario do SISTEMA/HW/DELL ou HP ETC:
`$> omreport system summary`



Chegar a porcentagem de *STATUS REBUILD*:
`[root@server93 ~]# omreport storage pdisk controller=0 | grep -i progress`

`
Progress                        : Not Applicable
Progress                        : Not Applicable
Progress                        : Not Applicable
Progress                        : 25% complete
Progress                        : Not Applicable
Progress                        : Not Applicable
`


DIAGNOSTICS
-----------

https://cs.uwaterloo.ca/~brecht/servers/docs/PowerEdge-2600/en/Dosa/CLI/cli_cc4r.htm

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
