puppet(1) -- puppet usado para orquestrar servidores em ambientes de produção.
===============================================

SYNOPSIS
--------

`puppet` [`ACAO`] [`--opcoes` `-c ` *config-file* ] *comando* ...

DESCRIÇÃO
---------

`puppet` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `-t`:
  Fazer um teste.

* `--server` *hostname*:
  Usa o servidor indicado para conectar.

* `--environment *AMBIENTE*`:
  Define o ambiente a ser utilizado devel, homol, production

* `--noop`: O puppet vai sugerir oque deve mudar sem fazer nada.

* `--tags=<container>`: usado para executar somente um container.


EXEMPLOS
--------

Exibir os cerificados:
   `$> puppet cert --list --all`

Testar conexao com servidor.com.br:
   `$> puppet agent --server servidor.com.br --test`

Executar servidor no modo debug:
   `$> puppet master --no-daemonize -debug`

Verificar se o arquivo esta configurado corretamente, e sem erros aparentes:
   `$> puppet parser validate site.pp`

Executar o puppet no servidor no:
   `$> puppetd --server=auto-gt.intranet --no-daemonize --no-usecacheonfailure -o --factsync --report -d`

Verificar se o puppet está como *ENABLE* ou *DISABLE*
	`puppet status -S "environment=stage"`


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

Executando testes com o puppet na linha de comando:

$> puppet resource package htop ensure=absent

$> puppet resource package htop ensure=installed

$> puppet resource services apache ensure=started
$> puppet resource user root
$> facter 


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
