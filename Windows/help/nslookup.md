nslookup(1) -- nslookup para minhas man pages v1.0
===============================================

NOME
----

`nslookup` - nslookup serve para testar o serviço de DNS, questionar NOMES, DOMÍNIOS, MX etc.

SYNOPSIS
--------

`nslookup` [`/OPCOES`] [`server` *SERVER-IP* ] *hostname* 

DESCRIÇÃO
---------

`nslookup` é um aplicativo usado para enviar Querys de hosts aos servidores de DNS.

OPÇÕES
------

* `server A.B.C.D`:
  Use o servidor A.B.C.D para realizar as perguntas de DNS.

* `debug`:
  Seleciona o modo de debug para vizualizar o MAXIMO de INFORMACOES de DEBUG.

* `set q=A`:
  Seleciona o modo de visuação de retorno tipo ADDRESS.

* `set q=MX`:
  Seleciona o modo de visualização tipo Mail Exchanger, para saber quem é o MX de um domínio por exemplo.

* `set q=PTR`:
  Seleciona o modo de visualização tipo POINTER, para saber quer é o REVERSO de determinado IP.

EXEMPLOS
--------

Questionamento um server especifico:

   `$> nslookup server 200.204.0.10`
	> set q=mx
	> www.google.com.br


ARQUIVOS
--------


*/c/Windows/System32/Drivers/etc/hosts*
  Arquivo LOCAL usado para traduzir nome para IP para o WINDOWS

*/etc/hosts*
  Arquivo LOCAL usado para traduzir nome para IP para o LINUX

/etc/resolv.conf
Arquivo usado para definir quem é o servidor DNS para o LINUX.

DIAGNOSTICS
-----------

**DNS DEBUG TROUBLESHOOTING**
  `debug` usado para realizar o debug do serviço de DNS, traz bastante informação sobre a QUERY DNS.

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

dig(5), ping(1), dnstop(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
