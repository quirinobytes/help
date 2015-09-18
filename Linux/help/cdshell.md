cdshell(1) -- cdshell para minhas man pages v1.0
===============================================

NOME
-----

`cdshell` - cdshell usado para criar as man pages e padronizar o uso do screen, com atalhos e vi com atalhos, alem do alias, export e seu enviroment melhorado, pelo menos na minha opniao, teste de descubra! ;)

SYNOPSIS
--------

`cds`

DESCRIÇÃO
---------

`cds` é um icomando que já entra dentro do diretório do CDSHELL, onde quer que ele esteja instalado, pois existe uma variável CDSHELL setada no seu bash.
também é usado para criar suas próprias man pages, chamadas miniman, após instalar, digite miniman ls por exemplo para ver o miniman do comando ls.
Usado para instalar os pacotes básicos de admin/troubleshoting, redes, management. etc.

`miniman` o **miniman** é um comando para chamar seus minimans e os próprios minimans que já existem.

Tente executar o comando *miniman -ls* para ver os possíveis minimans disponíveis.

Para ver o miniman do comando **route**  tente:

*miniman route*


EXEMPLOS
--------

Entrar dentro do diretório do cdshell:

   `$> cds`

Ver o miniman do comando if:

   `$> miniman if`

Instalar o CDSHELL:

   `$>cd shell; ./install`


ARQUIVOS
--------


*~/cdshell*

Esse é o diretrório que reside todos os arquivos do **CDSHELL**.

*~/.alias*
  Esse é o arquivo onde ficam suas configurações de alias, após executar ./install, tudo é instalado..

*~/.export*
  Esse arquivo ficam as variáveis que precisam ser exportadas.



ENVIRONMENT
-----------

`FOOCONF`
  If non-null the full pathname for an alternate system wide */etc/foo.conf*.
  Overridden by the `-c` option.

DIAGNOSTICS
-----------

The following diagnostics may be issued on stderr:

**Bad magic number.**
  The input file does not look like an archive file.

**Old style baz segments.**
  `foo` can only handle new style baz segments. COBOL object libraries are not
  supported in this version.

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
