awk(1) -- awk linguagem de desenvolvimento de script orientado a strem 
===============================================

NOME
----

`awk` - awk é uma linguagem de programação utilizada muito para analisar arquivos de textos e outputs de programas.

SYNOPSIS
--------

`awk` [`<OPCOES>`] [`-f programa.awk`] *arquivo*

DESCRIÇÃO
---------

`awk` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `-v var=$1`:
  dessa forma é possível usar a variável var dentro do programa.awk recebendo o conteúdo de um $1 por exemplo dentro de um shellscript.sh.

* `-f` *arquivo.awk*:
  Usado para executar o script em AWK usando o *arquivo.awk* como programa. Isso
  Sobrescreve o direcionamento com pipe `|`.


EXEMPLOS
--------

Exibindo somente os CS(Context Switch) maiores que 5000 em **VERMELHO**

   `$> vmstat -n 5 | awk '{ if ($12 > 5000) print "\033[31m;" $0 ; else print "\033[33m;" $0}'`



`/foo/ { print }`


`/[0-9]+\.[0-9]*/ { print }`


`$1 == "fred" { print $3 }`


`$5 ~ /root/ { print $3 }`


`{ 
  if ( $5 ~ /root/ ) { 
          print $3 
  } 
}`




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
