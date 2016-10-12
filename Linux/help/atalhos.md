atalhos(1) -- Pagina uma lista dos atalhos e beneficios do cdshell.
===============================================


SYNOPSIS
--------

`atalhos` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`atalhos` usada para exibir uma lista com os atalhos do CDSHELL.

ATALHOS
------
Lista dos atalhos, são comandos, aliases e teclas mapeadas em determinados programas como screenrc(scr), e vim.

COMANDOS E ALIAS
----------------

* `® `:
  Baixar git repo, e subir git repo.

* `com`:
    git commit
* `sta`:
    git status
* `clone *repo*`:
    clona o repositorio *repo*

* `cdshell`:
    manusear o CDSHELL.

TECLAS MAPEADAS
--------

F1		=> VIM: no modo comando, gera o 
F2		=> VIM: exibir os comentários do arquivo.
F3		=> VIM: Nao exibir os comentários do arquivo.
F4		=> Fecha a janela, somente a janela, nao o programa nela.
F5		=> SCREEN: Divide a tela na vertical.
F6		=> SCREEN: Divide a tela na horizontal.
F7		=> SCREEN: Diminui a janela.
F8		=> SCREEN: Aumenta a janela atual.
F9		=> SCREEN: Próxima janela.
F10		=> VIM: salva o arquivo.
F10+F10		=> VIM: salva o arquivo e sai.
F11		=> SCREEN: Executa o conteúdo do arquivo CDSHELL/linux/deploy@F11.sh
SHIFT+F9	=> SCREEN: mata a janela atual.

CRTL+a R	=> SCREEN: salva e recarrega o screerc, bom para testar as modificacoes on the fly.

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
