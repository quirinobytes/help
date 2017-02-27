tcl(1) -- Traffic Control libraries
===============================================


SYNOPSIS
--------

`tcl` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`tcl` é uma linguagem de programação para se trabalhar com trafego de dados.

OPÇÕES
------

*Definnindo uma variável*

set greeting hello
set greeting ;# ->hello
set person(name) bob
set person(name) ;#-> bob
set (name) bob ;# the is an array variable, where the array name is the empty string
set (name) ;#-> bob
set {} hello 
set {} ;#->hello



*MATH FUNCTIONS*

Tcl supports the following mathematical functions in expressions:

abs         acos        asin        atan
atan2       bool        ceil        cos
cosh        double      entier      exp
floor       fmod        hypot       int
isqrt       log         log10       max
min         pow         rand        round
sin         sinh        sqrt        srand
tan         tanh        wide

EXEMPLOS
--------


ARQUIVOS
--------

*SHA-BANG*    #!/usr/bin/expect 

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

*evoluindo com set dentro do ""*
`set var1 3.14159
set var2 hello
set var3 13
foreach num {1 2 3} {
    puts "var$num = [set var$num]"
}
output:
var1 = 3.14159
var2 = hello
var3 = 13`


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
