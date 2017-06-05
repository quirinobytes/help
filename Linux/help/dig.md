dig(1) -- dig - usado para questionar o DNS Server
==================================================


SYNOPSIS
--------

`dig` [`TIPO`] [*hostname*] @*<IP-DNSSERVER>* ...

DESCRIÇÃO
---------

`dig` é usado para fazer querys simples e complexas para o servidor de DNS.

OPÇÕES
------

* `MX`:
	Faz querys para saber que é o MaileXchanger do Domínio informado.

* `afxr`:
	Solicita a transferencia de Zonas da Domínio para mim(host).


* `ifxr`:
	Solicita a transferência incremental, ou seja traz somente oque foi alterado.

* `NS`:
	Faz querys para saber que é 

* `PTR`:
	Faz querys somente para consultar os IPS e devolver os nomes, ou seja REVERSO.
* `DEBUG`:
	Serve para exibir tudo.

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> date '%Y/%m/%d'`

*Teste de SPF*

`$> dig TXT uol.com.br +short`
`$> dig TXT _net1.uol.com.br +short`
`$> dig TXT _net2.uol.com.br +short`


*Pegando a Versão do Bind*
	`nslookup -q=txt -class=CHAOS version.bind 169.168.51.250`

*Pegando a versão do NSD:*
	`dig -t txt -c chaos VERSION.BIND @189.168.51.250`

*Pegando a VERSAO do Servidor DNS:*
	`$> dig version.bind txt chaos @DNS_IPSERVER`

;; ANSWER SECTION:
version.bind.           0       CH      TXT     "NSD 4.1.14"


ARQUIVOS
--------

*/etc/resolv.conf*
  Arquivo para configuração de resolvedor de nomes Locais para \*n?x like.
 miniman resolv.conf

ENVIRONMENT
-----------

`nslookup`
	Também pode ser usado para enviar QUERIES para servidores de DNS.

DIAGNOSTICS
-----------

Usando o nslookup é possível fazer um diagnótico mais detalhado.

**set debug.**
  Configura o format de debug para uso do nslookup

**set query={A,TXT,PTR,NS,MX}
  `A` configura modo de retorno de QUERIES somente para tipo A.
  `TXT` configura modo de retorno de QUERIES somente para tipo TXT.
  `PTR` configura modo de retorno de QUERIES somente para tipo REVERSO.
  `NS` configura modo de retorno de QUERIES somente para tipo NS(Domain servers).
  `MX` configura modo de retorno de QUERIES somente para tipo MX(Mail eXchange).

COMENTARIOS
-----------

Existem informaçoes na área do Security do miniman, procure em Security ou miniman -S



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
