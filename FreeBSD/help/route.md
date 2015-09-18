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

`route` E um comando utilizado para alterar, adicionar e excluir rotas na tabela de rotas do kernel.

O comando e o mesmo que  *netstat -r*, porem e necessario ser executado como root para ser alterado.

OPCOES
------

* `-4`:
  Do not write "busy" to stdout while processing.

* `-6` *config-file*:
  Use the alternate system wide *config-file* instead of */etc/foo.conf*. This
  overrides any `FOOCONF` environment variable.

* `-n`:
  In addition to the baz segments, also parse the blurfl headers.

* `-q`:
  Recursive mode. Operates as fast as lightning at the expense of a megabyte
  of virtual memory.

EXEMPLOS
--------

* Adicionar um gateway default:

   `$> route add -net 0.0.0.0/0 192.168.1.254`

* Mostrar as rotas:

   `$> netstat -nr`




ARQUIVOS
--------


*/etc/mygate*
  Arquivo de configuracao default para o OpenBSD.

ENVIRONMENT
-----------

Para habilitar o roteamento de pacotes pelo kernel no FreeBSD faça assim:

- ...

COMENTARIOS
-----------

Coloque seus comentários aqui...
<- Tag para comentários na Man Page, juro, nao sai nada.>

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

routef(5), netstat(1), ifconfig(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
