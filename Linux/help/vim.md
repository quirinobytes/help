vim(1) -- Editor de Texto Avançado
===============================================


SYNOPSIS
--------

`vim` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`vim` Usado para editar arquivos.

COMANDOS
------

* `i` :
   Entra no modo Inserir dados(INSERT).

* `gg` :
	Ir par ao inicio do arquivo, (ggi-> vai pro inicio ja inserindo)

* `GG` :
	Ir par ao fim do arquivo:

* `yy` :
	Copia linha.

* `dd` :
	Apagar linha.


EXEMPLOS
--------


Para apagar todas as linhas em branco em um arquivo:

   `:.V //d` => diz para procurar por linhas com um caracter(.) e depois inverter a selecao (V) e apagar(d)

Para apagar todas as linhas em branco em um arquivo:

   `:g/^$/d'` => diz para procurar em todo o Arquivo(G) com linhas que casem com ^(Comeco) $(fim) juntos e apague-os (d).

   `:30,$s/^/\/\/`  => da linha 30 ate o final($), substitua(s) tudo que for (/) começo de linha(^) por(/) comentário(//) escapado né(\/\/) claro! 


ARQUIVOS
--------

*~/.vimrc*
	Arquivo de configuraçao dos recursos do vim, lido automagicamente na inicialização.

ENVIRONMENT
-----------

`FOOCONF`
  If non-null the full pathname for an alternate system wide */etc/foo.conf*.
  Overridden by the `-c` option.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
