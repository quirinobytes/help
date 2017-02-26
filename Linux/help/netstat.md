netstat(1) -- netstat para minhas man pages v1.0
===============================================

NOME
----

`netstat` - netstat usado para exibir as conexões TCP/IP UDP e Sockets

SYNOPSIS
--------

`netstat` [`-opcoes`] []

DESCRIÇÃO
---------

`netstat` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `-i`:
  Usado para exibir as informações das (I)nterfaces com DEBUG/ERROS 

* `-antu`: 
  Usado para exibir todas as informações com TCP/UDP somente numeros.

* `-a`:
  Exibe todas as conexões.

* `-t`:
  Exibe todas as conexões TCP.

* `-u`:
  Exibe todas as conexões UDP.

* `-n`:
  Exibe somente numeros ao invés de traduzir para nomes.

* `-p`:
  Exibe as informações sobre os processos. quem é o dono porta.

* `-s`:
  Exibir as e(S)tatisticas de uso, com st(TCP) ou su(UDP).
* `-r`:
  Exibir a tabela de roteamento.
* `-c`:
  Continuously, exibir continuamente.
* `-l`:
  Exibir somente as ports que estão em modo LISTEN. -lx(active UNIX sockets), -lu(Active Unix), lt(Active TCP).


EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> netstat -antup`


ARQUIVOS
--------


*/etc/hosts*
  The system wide configuration file. See foo(5) for further details.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
