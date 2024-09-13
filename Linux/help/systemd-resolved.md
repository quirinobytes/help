systemd-resolved(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`systemd-resolved` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`systemd-resolved` Usado para manter as configuracoes de DNS na maquina atualizando o /etc/resolv.conf

*BUG-FIX*
rm -f /etc/resolv.conf
ln -sv /run/systemd/resolve/resolv.conf /etc/resolv.conf


OPÇÕES
------


EXEMPLOS
--------

`$> cat /etc/systemd/resolved.conf`

 DNS=1.1.1.1 8.8.8.8
 FallbackDNS=208.67.222.222
 #Domains=
 #DNSSEC=no
 #DNSOverTLS=no
 #MulticastDNS=no
 #LLMNR=no
 #Cache=no-negative
 #CacheFromLocalhost=no
 #DNSStubListener=yes
 #DNSStubListenerExtra=
 #ReadEtcHosts=yes
 #ResolveUnicastSingleLabel=no



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
