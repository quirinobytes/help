screen(1) -- screen Para gerenciar as janelas.
===============================================

SYNOPSIS
--------

`scr` [`-ls`] [`-x` `-r ` *pid* ] -f *.screenrc-file*

DESCRIÇÃO
---------

`screen` é um programa feito para abrir multiplas sessões de console em multiplas janelas,
alternar entre essas janelas, executar comandos, macros mapear teclas, enfim uma 
série de coisas, mas a melhor de todas pra mim é a possibilidade de compartilhar
a mesma sessão usando o mesmo usuário e senha.

Pode e deve ser usado com o arquivo de configuração **.screenrc**. Veja mais em screen(1).

OPÇÕES
------

* `-x`:
	Conecta em uma screen já aberto.
* `-r` *id*:
  Reconecta no screen específico *id* devido a ter mais de um screen aberto.

* `-ls`:
  Lista os screen abertos.

EXEMPLOS
--------

  Tecla | Mapeamento das teclas no screen
--------|---------------------------------
   F1   |  -> Cria uma nova sessão 
   F2   |  -> Nada
   F3   |  -> Nada
   F4   |  -> Fecha a Region/Window
   F5   |  -> Divide horizontal
   F6   |  -> Divide Vertical
   F7   |  -> Diminui a Region/Window
   F8   |  -> Aumenta a Region/Window
   F9   |  -> Muda focus para proxima de Region/Window
   F10  |  -> Trocar para proxima sessao nessa Region/Window
   F11  |  -> Sai e fecha todas Sessoes e Regions, mas pede confirmacao! (y)

* teste de comandos:
	<codigo here>

ENVIRONMENT 
-----------


*~/.screenrc*
  O arquivo mágico de configurção que todo admin pode usar. Veja screerc(5) para mais detalhes.

BUGS
----
  Caso as quebras de linhas começarem a dar problema, tente:

`$> termcapinfo xterm* ti@:te@`
ou
`$>bind 'set horizontal-scroll-mode off'` 


AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
