wpscan(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`wpscan` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`wpscan` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------


EXEMPLOS
--------

Do 'non-intrusive' checks...

ruby wpscan.rb --url www.example.com

Do wordlist password brute force on enumerated users using 50 threads...

ruby wpscan.rb --url www.example.com --wordlist darkc0de.lst --threads 50

Do wordlist password brute force on enumerated users using STDIN as the wordlist...

crunch 5 13 -f charset.lst mixalpha | ruby wpscan.rb --url www.example.com --wordlist -

Do wordlist password brute force on the 'admin' username only...

ruby wpscan.rb --url www.example.com --wordlist darkc0de.lst --username admin

Enumerate installed plugins...

ruby wpscan.rb --url www.example.com --enumerate p

Run all enumeration tools...

ruby wpscan.rb --url www.example.com --enumerate

Use custom content directory...

ruby wpscan.rb -u www.example.com --wp-content-dir custom-content

Update WPScan's databases...

ruby wpscan.rb --update

Debug output...

ruby wpscan.rb --url www.example.com --debug-output 2>debug.log

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
