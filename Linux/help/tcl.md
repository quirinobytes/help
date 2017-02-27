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

*Imprimir o resultado da saida do ultimo comando*
`puts $expect_out(buffer)`

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


*TYPE CONVERSIONS*

Tcl supports the following functions to convert from one representation of a number to another:


double int wide entier
double() converts a number to a floating-point number.
int() converts a number to an ordinary integer number (by truncating the decimal part).
wide() converts a number to a so-called wide integer number (these numbers have a larger range).
entier() coerces a number to an integer of appropriate size to hold it without truncation. This might return the same as int() or wide() or an integer of arbitrary size (in Tcl 8.5 and above).

EXEMPLOS
--------

*Usando expressoes matematicas*
`set X 100
set Y 256
set Z [expr {$Y + $X}]
set Z_LABEL "$Y plus $X is "

puts "$Z_LABEL $Z"
puts "The square root of $Y is [expr { sqrt($Y) }]\n"

puts "Because of the precedence rules \"5 + -3 * 4\"   is: [expr {-3 * 4 + 5}]"
puts "Because of the parentheses      \"(5 + -3) * 4\" is: [expr {(5 + -3) * 4}]"

set A 3
set B 4
puts "The hypotenuse of a triangle: [expr {hypot($A,$B)}]"

#
# The trigonometric functions work with radians ...
#
set pi6 [expr {3.1415926/6.0}]
puts "The sine and cosine of pi/6: [expr {sin($pi6)}] [expr {cos($pi6)}]"`

#
# Working with arrays
#
set a(1) 10
set a(2) 7
set a(3) 17
set b    2
puts "Sum: [expr {$a(1)+$a($b)}]"


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
