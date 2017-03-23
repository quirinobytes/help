git(1) -- Git Versionamento like Torvalds
===============================================


SYNOPSIS
--------

`git` [`comando`] [`--opcoes` *arquivos* ] *arquivo-fonte* ou

DESCRIÇÃO
---------

`git` usado para versionar arquivos de código fonte.

OPÇÕES
------

* `git commit -m 'message'`:
	Faz o envio das alterações para o repositório local.

* `git push origin master` :
	Empurrando o repositório master para o SERVIDOR conhecido como origin no *git config -l*

* `git add --all`:
	Quando se exclui ou adiciona arquivos necessário, fazer isso para colocar os arquivos sob o TRACKER, (PROCURADOR, para que se faça ser visto).

* `git config credential.helper store`:
	Salvar as credenciais para https, *fica toda hora pedindo*

* `git remote set-url origin https://user@site.stash.com.br/`
	Adicionar um novo Origin, tipo o servidor para armazenar os codigos.

EXEMPLOS
--------

Clonar um repo em HTTP

   `$> git clone http://github.com/quirinobytes/shell.git'`

Exportar os arquivos sem os (\*.git)

	`git archive master --format zip --output "output.zip"$> `
	ou
	`$> git archive master | gzip > latest.tgz`

ARQUIVOS
--------

*/etc/foo.conf*
  The system wide configuration file. See foo(5) for further details.

*.gitignore*
	Arquivo usado para criar excessões de arquivos que não devem ser TRACKEADOS, ou seja, ignore esses arquivos,
	muito utilizado para arquivos de log.

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
