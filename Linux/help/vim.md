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

*Cursor:*
k : para cima
backspace: esquerda
space: direita
j: para baixo
Toda vez que desejar voltar ao modo comando, pressione a tecla ESC. 

*Movimentação de palavra:*
w : pula uma palavra
b : volta uma palavra
c : vai para o fim da palavra
ex: 2w - pula duas palavras
$ : vai para o fim da linha
^ ou O - vai para o início da linha


*Controle do cursor:*
G - final do arquivo
#G - vai para uma linha qualquer
:# - vai para uma linha
Ctrl g - informa a linha que você foi
Ctrl b - retorna página
Ctrl f - avança página
Ctrl u - retorna metade da página
Ctrl d - avança metade da página
Ctrl I - refresh da tela
L - última linha da tela
M - meio da linha na tela
H - início da tela


*Modo de entrada:*
a - acrescenta texto depois do cursor
i - insere texto antes do cursor
o - abre uma linha de texto abaixo
O - abre uma linha de texto
A - acrescenta texto no fim da linha
I - insere texto no início da linha


*Deletando texto:*
x - deleta um caracter
dw - deleta palavra
ex: 2dw - delete duas palavras
dd - deleta linha corrente
dG - deleta até a última linha do arquivo
d$ - deleta até o fim da linha
d^ - deleta até o início da linha


*Movendo texto:*

Primeiro executar o comando deletar, depois executar o colar:
p - cola abaixo do cursor
P - cola acima do cursor


*Copiando texto:*
yw - copia palavra corrente
yy - copia a linha corrente
yG - copia até a última linha do arquivo
y$ - copia até o fim da linha
y^ - copia até o início da linha


*Alterando o texto:*
r - substitui caracter
R - substitui todas as letras até pressionar ESC
cw - altera palavra
cc - altera a linha inteira
cG - altera até a última linha do arquivo
c$ - altera até o fim da linha

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
