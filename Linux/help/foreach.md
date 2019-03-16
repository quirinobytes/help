foreach(1) -- Laço de repetição simples
===============================================


SYNOPSIS
--------

`foreach` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`foreach` A grande verdade é que nao tem foreach, mas é muito simples implementa-la.

EXEMPLOS
---------

1 exemplo: 'while'
--------------------------
while read line; do
  echo "$line"
done < file

2 exemplo: 'for'
--------------------------
for each in $(cat list)
do
  echo $each
done

3 exemplo: 'cat'
--------------------------
cat file | while read $line; do
    echo "$line"
done
--------------------------

Facil né :)

Agora vc já pode criar o seu!

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
