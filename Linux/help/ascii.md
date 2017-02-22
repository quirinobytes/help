ascii(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`ascii` 

DESCRIÇÃO
---------

`ascii` Manual do ASCII

OPÇÕES
------


EXEMPLOS
--------

Shell script para imprimir os caracteres em ASCII

*Shell-Script*
`# !/bin/bash

for i in $(seq 32 126)
do
    printf \\$(printf '%03o' "${i}")
done`


PERL para imprimir os caracteres em ACSCII

*Perl*
`print chr for 32..126;`

*Python*
`for x in range(32, 127): print (chr(x))`

*Php*
`for ( $i=32; $i <= 126; $i++ ) {
 echo chr($i);
}`

*R*
`intToUtf8(32:126)`


COMENTARIOS
-----------

man ascii

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
