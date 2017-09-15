linguemctl(1) -- Sistema de Email proprietário.
===============================================


SYNOPSIS
--------

`linguemctl` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`linguemctl` é um servidor de email.

OPÇÕES
------

Listar os usuários com status.
* `linguemctl hs check --detail all `:

Use the alternate system wide *config-file* instead of */etc/foo.conf*. This
  overrides any `FOOCONF` environment variable.
* `linguemctl us status alexandre@qualisegco.dominiotemporario.com`

Exibir todas as versões dos HS.
* `linguemctl hs version all`:

Listar a situação dos File Servers do Linguem, filtrando por nitro52.
* `linguemctl fs list | grep nitro52`:

Listar *infos do HS emerge192*:
`linguemctl hs info emerge192`:


**HS** 

*Suspender HS*:
	`linguemctl hs status suspended <HS_NAME>`

*Des Suspender:* 
	`linguemctl hs status up <HS_NAME>`

*Slow HS*:
	`linguemctl hs status slow <HS_NAME>`

*Listar Versao dos HS´s*
	`linguemctl hs version all`
	`linguemctl hs version <HS_NAME>`


*Listar tudo do HS, principalmente ver os OUTDATED*
	`/opt/linguem/bin/linguemctl --nolog hs check --detail emerge113`


**USUARIO**

*Status do usuário/email* 
	`linguemctl user status <EMAIL@bol.com.br/sem uol.com.br> `

*Replicar Usuários:*
	`linguemctl hs replicate --topusers 2000 emerge113-a`


** FS **

*reconstruct*
	`linguemctl us reconstruct  lucianahran@bol.com.br   --ignorefsdown`

** MENSAGEM ** 




EXEMPLOS
--------

Suspender HS
   `$> lc hs status suspended <HS_NAME>'`


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
