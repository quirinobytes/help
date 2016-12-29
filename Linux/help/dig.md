dig(1) -- dig - usado para questionar o DNS Server
==================================================


SYNOPSIS
--------

`dig` [`TIPO`] [*hostname*] @*<IP-DNSSERVER>* ...

DESCRIÇÃO
---------

`dig` é usado para fazer querys simples e complexas para o servidor de DNS.

OPÇÕES
------

* `MX`:
	Faz querys para saber que é o MaileXchanger do Domínio informado.

* `afxr`:
	Solicita a transferencia de Zonas da Domínio para mim(host).


* `ifxr`:
	Solicita a transferência incremental, ou seja traz somente oque foi alterado.

* `NS`:
	Faz querys para saber que é 

* `PTR`:
	Faz querys somente para consultar os IPS e devolver os nomes, ou seja REVERSO.
* `DEBUG`:
	Serve para exibir tudo.

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
