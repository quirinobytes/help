tcpdump(1) -- tcpdump para minhas man pages v1.0
===============================================

NOME
----

`tcpdump` - tcpdump de arquivo MarkDown para gerar Man Pages por Rafael Quirino.

SYNOPSIS
--------

`tcpdump` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`tcpdump` 

OPÇÕES
------

* `-A`:
  Mostra o cabeçalho do pacote, muito bom para saber de onde vem e HEADERS infos.

* `-nn`:
  Não traduz nomes de host(FQDN) nem numeros de porta(/etc/services).

* `-X`:
  Exibe informação do conteúdo heXa do pacote, mas decodificando o dado em texto.

* `-x`:
  Mesta coisa que -X so que nao decodifica.

* `-vv`:
  Modo bemmm verbose, seria um tipo nervose verbose.

* `-i <IF>`:
  Exibe o dump de pacotes somente nessa(s) interfaces.
* `-w <FILENAME>`:
	Salva no formato pcap para ser visualizado no wireshark, network miner, etc. use com *-s 65536*
* `-s <NUM>`:
	Ler a quantidade de bytes para cada pacote, usar a qtde necessaria para capturar a informacao para o protocolo desejado.

EXEMPLOS
--------

Exibir conteúdo de pacotes UPnP Entertaiment Service(UDP/239.255.255.250:1900).

   `$> tcpdump -Annvi -i eth0 host 239.255.255.250`


Capturando senhas em texto puro com tcpdump e grep.
   `$> tcpdump port http or port ftp or port smtp or port imap or port pop3 -l -A | egrep -i 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user ' --color=auto --line-buffered -B20`



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
