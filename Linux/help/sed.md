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


# EXEMPLOS
--------

## - 1 Pegar os nomes dos arquivos

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

## - 2 Apagar as linhas em branco de um arquivo
`$> sed '/^$/d' arquivo.txt > novoarquivo.txt ou 
awk 'NF>0' arquivo.txt > novoarquivo.txt`


## - 3 Apagar somente a 3a. linha
`$> echo -en 'varias\nlinhas\nagora\nnovalinha' | sed 3d`

## - 4 Imprimir somente a 1a. linha
`$> echo -en 'varias\nlinhas\nagora\nnovalinha' | sed 1p`

## - 5 Verificar se o nome passado tem extensão, como em arquivos
` echo teste.txt | grep -E '.*\..*[^\\]'
  $      = Look from the end of string
  [^\\]+ = Any character except path separator one or more time
  \.     = looks for <dot> character before extension
`


# ALPHABETO (sed)
--------

*Written by Aurelio Jargas on December 12, 2012*

a    append        append some text after the [PATT]
b    branch        branch to label (GOTO)
c    change        replace the [PATT] by some text
d    delete        delete the [PATT]
D    delete        delete the first line of [PATT]
e    execute       execute a system command #GNU-sed
F    filename      print the current input's filename #GNU-sed
g    get           copy [HOLD] contents to [PATT] (overwriting)
G    get           copy [HOLD] contents to [PATT] (appending)
h    hold          copy [PATT] contents to [HOLD] (overwriting)
H    hold          copy [PATT] contents to [HOLD] (appending)
i    insert        insert some text before the [PATT]
l    list          print [PATT] showing invisible characters
n    next          read the next line to [PATT]
N    next          append the next line to [PATT]
p    print         print [PATT] contents
P    print         print first line of [PATT]
q    quit          print [PATT] and quit sed
Q    quit          discard [PATT] and quit sed #GNU-sed
r    read          show file contents after [PATT]
R    read          show one line of file after [PATT] #GNU-sed
s    substitute    search and replace
t    tee           branch to label if one s/// matched
T    tee           branch to label if no s/// matched #GNU-sed
v    version       abort if sed version is incompatible #GNU-sed
w    write         write [PATT] to a file
W    write         write first line of [PATT] to a file #GNU-sed
x    exchange      swap [PATT] and [HOLD] contents
y    ?             translate characters
z    zap           empty [PATT] contents #GNU-sed

Note:
   [PATT] - Pattern space
   [HOLD] - Hold space

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

REGEX(5), awk(1), cut(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
