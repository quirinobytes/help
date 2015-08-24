VARIABLES(1) -- VARIÁVEIS  padrao SHELL SCRIPT
===============================================

NOME
----

`VARIABLES` - VARIAVEIS padrão para se usar no SHELL SCRIPT .

SYNOPSIS
--------

`VARIABLES` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`VARIABLES` que pode ser utilizadas em BASH.

Variáveis em Shell Script são globais, ou seja podem ser usadas fora da funcao.

Para declarar uma variável *lOCAL* deve-se indicar da seguinte forma:

local VAR='Existem variáveis locais!'

OPÇÕES
------

* `$0`:  -> Nome do processo que esta executando.
* `$1`:  -> Primeiro argumento.
* `$2`:  -> Segundo argumento.
* `$3`:  -> Terceiro argumento, e assim por diante.


* `$$`:  -> Numero do Processo PAI.
* `$?`:  -> Código de erro de retorno do processo.
* `$!`:  -> PID do ultimo *processo filho* iniciado com sucesso.

* `$#`:  -> Total de argumentos passados via linha de comando.
* `$@`:  -> Um array com *Todos* os argumentos passados

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> args() { echo $1 $2 $3; } ;  args arg1 arg2 arg3 `


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
