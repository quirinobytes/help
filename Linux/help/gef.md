gef(1) -- Melhorar o gdb para melhorar o debug
===============================================


SYNOPSIS
--------

`gef` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`gef` melhora seu GDB para ser um debugger mais eficiente e facil de usar.


OPÇÕES
------

* `disassemble main`:
  Exibe toda a pilha de stack do binario.

* `b *addr` *addr*:
  Colocar um breakpoint no endereço, precisa do \*.

* `r`:
   Running, colocar para rodar o binario.

* `elf-info`:
  Exibe informaçoes do binario.


EXEMPLOS
--------

Coloque os exemplos aqui:

   `gef> elf-info'`



AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
