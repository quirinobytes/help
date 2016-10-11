cdshell(1) -- O cdshell é usado para criar as man pages e padronizar o uso do screen, com atalhos e vi com atalhos, alem do alias, export e seu enviroment melhorado, pelo menos na minha opniao, teste de descubra! ;)
===============================================


SYNOPSIS
--------

`cdshell` ['-v'] [*Opcoes*]

DESCRIÇÃO
---------

`cds` é um icomando que já entra dentro do diretório do CDSHELL, onde quer que ele esteja instalado, pois existe uma variável CDSHELL setada no seu bash.
também é usado para criar suas próprias man pages, chamadas miniman, após instalar, digite miniman ls por exemplo para ver o miniman do comando ls.
Usado para instalar os pacotes básicos de admin/troubleshoting, redes, management. etc.

`miniman` o **miniman** é um comando para chamar seus minimans e os próprios minimans que já existem.

Tente executar o comando *miniman -ls* para ver os possíveis minimans disponíveis.

Para ver o miniman do comando **route**  tente:

*miniman route*


OPÇÕES
------

* `--help`:
  Do not write "busy" to stdout while processing.

* `install` 
  Instala o CDSHELL no seu ambiente.

* `-i`:
  O mesmo que *install* Instala o CDSHELL no seu ambiente.

* `-v`:
  Exibe a versão do comando cdshell, nao do pacote CDSHELL.


EXEMPLOS
--------

Entrar dentro do diretório do cdshell:

   `$> cds`

Ver o miniman do comando cdshell:

   `$> miniman cdshell`

Instalar o CDSHELL:

   `$> cdshell install`


ARQUIVOS
--------

*~/cdshell*

Esse é o diretrório que reside todos os arquivos do **CDSHELL**.

*~/.alias*
  Esse é o arquivo onde ficam suas configurações de alias, após executar ./install, tudo é instalado..

*~/.export*
  Esse arquivo ficam as variáveis que precisam ser exportadas.

*~/.screenrc*
  Esse arquivo mantém as personalização do screenrc.



ENVIRONMENT
-----------

`F4`
  Fechar a janela no screenrc.
`F5`
  Cortar janela horizontal.
`F6`
  Cortar janela vertical.
`F7`
  Diminuir a janela atual
`F8`
  Aumentar janela atual .
`F9`
  Navegar entre as janelas, espécie de TAB pro screenrc.
`SHIFT+F9`
  Matar a janela atual.
`F10`
  Usado para salvar no VI, e sair no MC.
`F11`
  Usado para fazer DEPLOY, executa o conteúdo do arquivo $CDSHELL/linux/deployF11.sh
`Crtl+A R`
  De dentro do screen: Usado para salvar e ja recarrecar o arquivo de .screenrc de dentro dele mesmo, otimo para testar as modificação sem precisar ficar recarregando sempre.


DIAGNOSTICS
-----------

Em caso de problema é feita uma cópia dos arquivos que são sobrescritos na instalação no diretório de backup => $CDSHELL/backup

COMENTARIOS
-----------

Qualquer dúvida ou sugestão, fique a vontade para entrar em contato quirinobytes@gmail.com

BUGS
----

Problemas e BUGS, por gentileza enviar para quirinobytes@gmail.com

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
