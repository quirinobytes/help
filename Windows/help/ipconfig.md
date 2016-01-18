ipconfig(1) -- ipconfig Visualizar configurações de Rede.
===============================================

NOME
----

`ipconfig` - ipconfig Exibir e alterar algumas configurações de rede.

SYNOPSIS
--------

`ipconfig` [`/OPCOES`] [`` ] 

DESCRIÇÃO
---------

`ipconfig`  é um utilitário para gerenciar e exibir as confiruações de rede.

OPÇÕES
------

* `/flushdns`:
  Apaga a tabela de Cache de DNS no sistema local.

* `/registerdns`:
  Registrar o servidor de DNS.

* `/renew` *CONEXAO_LOCAL*:
  Renovar a conexão para a interface especificada.

* `/renew_all`:
  Renovar a conexão para todas as interfaces.

* `/release`:
  Liberar a conexão para a interface especificada.

* `/release_all`:
  Liberar a conexão para todas as interfaces.

EXEMPLOS
--------

Limpar cache de DNS.

   `$> ipconfig /flushdns `


ARQUIVOS
--------


*/etc/resolv.conf*

Nao existe um arquivo resolv.conf como no caso do Windows.

*/Windows/System32/drivers/etc/hosts*
Arquivo de tradução direta para hosts no Windows.

ENVIRONMENT
-----------

`FOOCONF`
  If non-null the full pathname for an alternate system wide */etc/foo.conf*.
  Overridden by the `-c` option.

DIAGNOSTICS
-----------


**nslookup**
  Ferramenta usada para realizar o troubleshooting de problemas na resolução de nomes.
`miniman nslookup` para maiores informações.

**ping**
  Ferramenta usada para realizar resolução de problemas de rede.

COMENTARIOS
-----------

Coloque seus comentários aqui...
<- Tag para comentários na Man Page, juro, não sai nada.>

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

nslookup(5), ping(1), traceroute(1) [Windows Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
