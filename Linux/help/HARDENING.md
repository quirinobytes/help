HARDENING(1) -- Hardening é uma tecnica para endurecer a segurança do servidor.
===============================================


SYNOPSIS
--------

`HARDENING` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`HARDENING` é usado para melhorar a segurança e a estabilidade do servidor

OPÇÕES
------

* `tcp`: Colocar configurações de kernel para melhorar o tempo de time wait dos pacotes, para não ficar muito tempo no keepalive. (isso permite um melhor uso das conexoes sendo que as que estão com keepalive muito tempo serao desconectados, abrindo espaço para novas conexões acontecerem.

	net.ipv4.tcp_keepalive_intvl = 10
	net.ipv4.tcp_keepalive_probes = 9
	net.ipv4.tcp_keepalive_time = 1800


EXEMPLOS
--------

Coloque os exemplos aqui:
   `$> date '%Y/%m/%d'`


ARQUIVOS
--------


*/etc/sysctl.conf*
	Arquivo com as configurações de opções de kernel.

*/etc/sysctl.d/*
	Diretõrio com as configurações de opções de kernel.

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
