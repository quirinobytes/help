iptables(1) -- iptables Firewall
===============================================

NOME
----

`iptables` - iptables para gerenciar o Firewall do Linux

SYNOPSIS
--------

`iptables` [`-OPCOES`] [`<` *iptables-savefile* ]

DESCRIÇÃO
---------

`iptables` é o firewall do linux, e com esse comando pode-=se criar, ver e excluir regras de firewall.

OPÇÕES
------

* `-L`:
  Usado para listar as regras para a tabela informada, usa tabela FILTER como pradão.

* `-t nat` *config-file*:
  Informa para usar a tabela *nat* ao inves da *filter*.

* `-t mangle`:
  Informa para usar a tabela *mangle* ao inves da *filter*.

* `-F`:
  Faz a limpeza das tabelas. Zera as regras.

* `-P CHAIN POLICE_NAME`:
  Usado para definir a politica da CHAIN. Por exemplo DROP ou ACCEPT.


EXEMPLOS
--------

Definir a politica restritiva,i ou seja entrada como DROP.


   `$> iptables -P INPUT DROP`

Aumentar o TTL do pacote que for pre roteado e vindo de eth0 em +1 salto, pode-se usar 2,10, qtos quizer até 256 se nao me engano.

    `$> iptables -t mangle -A PREROUTING -i eth0 -d 239.255.255.250 -j TTL –ttl-inc 1`

ARQUIVOS
--------


*/etc/foo.conf*
  The system wide configuration file. See foo(5) for further details.

*~/.foorc*
  Per user configuration file. See foo(5) for further details.

ENVIRONMENT
-----------

`FOOCONF`
  If non-null the full pathname for an alternate system wide */etc/foo.conf*.
  Overridden by the `-c` option.

DIAGNOSTICS
-----------

Os seguintes programas podem ser usados para diagnosticos de rede e seus erros e saídas vao direto para *stderr*:

**tcpdump**
 Pode ser usado para inpecionar os pacotes da rede e facilitar a resolução de problemas.

**ngrep**
 Como `tcpdump` também pode ser usado para solucionar problemas de rede, e também para sniffar pacotes de rede inspecionando seu conteúdo.
  Necessário ser root.

**netstat -anutp | grep SYN**
  Esse comando mágico pode ser usado para descobrir problemas de conexão, onde existe um CLIENT-SERVER e que alguma coisa nao acontece.

COMENTARIOS
-----------

Coloque seus comentários aqui...
<- Tag para comentários na Man Page, juro, não sai nada.>

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
