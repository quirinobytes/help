yum(1) -- yum  Gerenciador de Pacotes do RedHat
===============================================

NOME
----

`yum` - yum adiciona/exclui/manutenção de pacotes RedHat

SYNOPSIS
--------

`yum` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`yum` é um aplicativo para gerenciar pacotes no Linux RedHat, faz instalação, desinstalação, atualização de pacotes, mantém a lista de repositórios, faz a gerencia de dependências na instalação.

OPÇÕES
------

* `repolist`:
  Exibir a lista de repositórios.

* `remove` *PACOTE*:
  Use the alternate system wide *config-file* instead of */etc/foo.conf*. This
  overrides any `FOOCONF` environment variable.

* `update`:
  Faz o update da base de dados dos **PACOTES**

* `install` *PACOTE*:
  Faz a instalação do pacote no sistema.

* `--enablerepo=epel`:
  Habilita o funcionamento do repositório.

* `yum repolist disabled`:
  Exibir os repositórios desabilitados.

* `yum whatprovides '*bin/dig':
  Procurar e exibir em qual pacote está o arquivo binário *bin/dig.

EXEMPLOS
--------

Desabilitar o repositorio epel e instalar o zabbix.

   `$> yum --enablerepo=epel install zabbix`


ARQUIVOS
--------


*/etc/yum.repos.d/*
  Dirétório dos repositórios

*/etc/yum.conf*
  Arquivo de configuração do YUM.

ENVIRONMENT
-----------

`FOOCONF`
  If non-null the full pathname for an alternate system wide */etc/foo.conf*.
  Overridden by the `-c` option.

DIAGNOSTICS
-----------


**Usando PROXY**
  Dados necessário para usar PROXY para fazer YUM.

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
