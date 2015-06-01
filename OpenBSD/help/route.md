route(1) -- admin de rotas IP v1.0
===============================================

NOME
----

`route` - gerencia a tabela de rotas IP do host.

SYNOPSIS
--------

`route` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRICAO
---------

`route` … um comando utilizado para alterar, adicionar e excluir rotas na tabela de rotas do kernel.

O comando È o mesmo que  *netstat -r*, porÈm È necessÈrio ser executado como root para ser alterado.

OPCOES
------

* `-b`:
  Do not write "busy" to stdout while processing.

* `-c` *config-file*:
  Use the alternate system wide *config-file* instead of */etc/foo.conf*. This
  overrides any `FOOCONF` environment variable.

* `-a`:
  In addition to the baz segments, also parse the blurfl headers.

* `-r`:
  Recursive mode. Operates as fast as lightning at the expense of a megabyte
  of virtual memory.

EXEMPLOS
--------

* Adicionar um gateway default:

   `$> route add -net 0.0.0.0/0 192.168.1.254`

* Mostrar as rotas:

   `$> route show`


ARQUIVOS
--------


*/etc/mygate*
  Arquivo de configura√√o default para o OpenBSD.

ENVIRONMENT
-----------

Para habilitar o roteamento de pacotes pelo kernel no OpenBSD faa assim:

- ...

COMENTARIOS
-----------

Coloque seus comentios aqui...
<- Tag para comentrios na Man Page, juro, n sai nada.>

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

routef(5), netstat(1), ifconfig(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
