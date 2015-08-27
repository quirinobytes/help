sed(1) -- sed stream editor
===============================================

NOME
----

`sed` - sed Stream Editor.

SYNOPSIS
--------

`sed` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`sed` é um poderoso editor de stream, fluxos de dados.
é possível usa *REGEX* e também possui grande integração com **vim**. Veja mais em vimrc(1).

OPÇÕES
------

* `-i`:
 Edita o arquivo diretamente na fonte, Cuidado para não destruir o arquivo.


EXEMPLOS
--------

Coloque os exemplos aqui:

1. Pegar os nomes dos arquivos

$> miniman -ls 
/root/help/Linux/help/complete.1
/root/help/Linux/help/iconv.1
/root/help/Linux/help/if.1
/root/help/Linux/help/screen.1


  Queremos somente os nomes dos arquivos, portanto corta o .1 e tira todas as letras ate a /


`$> miniman -ls | sed 's/.1//g' |sed 's/[a-zA-Z]*\///g'
complete
iconv
if
screen
`

Apagar as linhas em branco de um arquivo
`$> sed '/^$/d' arquivo.txt > novoarquivo.txt ou 
awk 'NF>0' arquivo.txt > novoarquivo.txt`




AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

REGEX(5), awk(1), cut(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
