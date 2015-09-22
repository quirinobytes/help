ngrep(1) -- Network Grep
===============================================

NOME
----

`ngrep` - usado para filtrar o conteúdo dos pacotes de rede.

SYNOPSIS
--------

`ngrep` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`ngrep` é um programa usado para inspecionar os pactoes do tráfego de rede, com ele é possível fazer filtros BPF para criar regras para filtro.
o Ngrep é um poderoso programa para sniffar a rede.

OPÇÕES
------

* `-nn`:
Não realizar as traduções para os endereços de nome de host(FQDN), nem as traduções de número de porta.
* `-vv` *config-file*:
  Nervose VERBOSE, ou seja com bastante informações de saída. 
* `-d`:
  Utilizar a seguinte interface(Device)

EXEMPLOS
--------

Coloque os exemplos aqui:

Verificar os pacotes da interface VPN (tun0):

   `$>  ngrep -nnvv -eq -d tun0`

DIAGNOSTICS
-----------

The following diagnostics may be issued on stderr:

**BPF**
  Os famosos pacotes BPF, são usados para criar regras avançadas para filtrar os pacotes de rede.

veja mais com: 
`$> miniman BPF`

COMENTARIOS
-----------

Coloque seus comentários aqui...
<- Fazer Filtros BPF são extremamente importantes para um bom troubleshooting.>


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

tcpdump(1), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
