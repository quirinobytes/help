expect(1) -- Script para interagir com sistemas.
===============================================


SYNOPSIS
--------

`expect` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`expect` é uma lingaguem de programação para intereagir com sistemas.

OPÇÕES
------

* `-d`:
  Modo debug

EXEMPLOS
--------

*Lendo argumentos*
set arg1 [lindex $argv 0]


puts => printf

set timeout => define um tempo para o expect aguardar.

spawn comando paramtros => executa o comando com seus parametros.

set fd1[open "~/arquivo.txt"]
set senha1 [read $fd1]				=> Le o arquivo arquivo.txt e coloca o conteudo em senha1

expect -exact "ssh aspen\r   => Espera exatamente "ssh aspen"

* `exemplo de if com comparacao de STRINGS`:
if [string match "f*b*" "foobar"] {
    puts "match"
} else {
    puts "no match"
}



ENVIRONMENT
-----------

`TCL`
	Expect por padrão usa as mesma nuances e caracteristicas de TCL, miniman tcl para mais informações.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
