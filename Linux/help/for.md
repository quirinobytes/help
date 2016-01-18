for(1) -- for para minhas man pages v1.0
===============================================

NOME
----

`for` - Criar estrutura de repeticao.

SYNOPSIS
--------

`for <iteração> in <lista>; do
	bloco de codigos/comando
done`

DESCRIÇÃO
---------

`for` pode ser utilizado para criar estruturas de repetição, normalmente utilizado em problemas que necessitam um ciclo de repetição com controle.

OPÇÕES
------

* `for ((c=0;$c>10;$c++)) do echo $c ; done`:
  In addition to the baz segments, also parse the blurfl headers.

* `for i in $(seq 1 2 10); do echo $i ; done`:
  Recursive mode. Operates as fast as lightning at the expense of a megabyte
  of virtual memory.

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> for i in `seq 1 2 10`; do echo $i ; done`

   `$> for ((c=0;$c>10;$c++)) do echo $c ; done `


`$> for ((i=1, j=10; i <= 5 ; i++, j=j+5))
do
 echo "Number $i: $j"
done
`

Usando Range Incremental:

`$> for num in {1..10..2}
do
 echo "Number: $num"
done`




AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

while(1), foreach(1), do(1) [Linux Man Page HOWTO](
http://www.schweikhardt.net/man_page_howto.html)
