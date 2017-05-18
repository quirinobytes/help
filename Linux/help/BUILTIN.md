BULTIN(1) -- Funções embutidas do shell (bash)
===============================================


SYNOPSIS
--------

`miniman BUILTIN` [` --help `] () 

DESCRIÇÃO
---------

`BULTIN` é um documento que mostra algumas funções embutidas do shell.

OPÇÕES
------

Dentro de um programa .sh, voce pode pegar os parametros passados como argumento assim:
*Variável*	*Significado*
$0			Contém o nome do programa
$#			Contém a quantidade de parâmetros passados
$*			Contém o conjunto de todos os parâmetros (muito parecido com $@)


EXEMPLOS
--------

	Pegar o tamanho da variável:
* `size=${#myvar} $ echo $size`

	Remover linhas com caracteres minusculos.:
*  `>$ sed '/[[:upper:]]/d'`

ARQUIVOS
--------

*~/.bashrc*
  Arquivo de configuração do shell por usuár

ENVIRONMENT
-----------

`SHELL=bash`
  Para ambiente shell bash com o CDSHELL o arquivo do enviroment lido é o *~/.bashrc* que chama o *.alias* e o *.export*  na sequencia, definindo tudo que é necessário, inclusive outros arquivos fontes, como colors.sh


BUGS
----

Nessa sessao mostro o problema de usar backspace e nao fechar os caracteres nao imprimiveis no PS1:


*Non-printable sequences should be enclosed in \[ and \]*
`\[\033[01;32m\]\u:\[\033[01;34m\] \W\033[01;34m \$\[\033[00m\]`
                   |_____________|               |_|
                          |                       |
                          +--- Let this apply to this as well.

*As such this should have intended coloring:*
`\[\033[1;32m\]\u:\[\033[1;34m\] \W \$\[\033[0m\]`
                                |_____|
                                   |
                                   +---- Bold blue.

*Keeping the "original" this should also work:*
`\[\033[1;32m\]\u:\[\033[1;34m\] \W\[\033[1;34m\] \$\[\033[0m\]`
                                   |_|         |_|
                                    |           |
                                    +-----------+-- Enclose in \[ \]



45 exemplos de variáveis e arrays em Shell Script


`0 - Retorna quantos índices (posições) existem no array`
$> echo ${#VALOR[*]}

`1 - Criar uma variável, ${var} é o mesmo que $var, porém não ambíguo.`
var="http://www.terminalroot.com.br/"</p><p>echo $var</p><p>http://www.terminalroot.com.br/

`2 - Retornar o tamanho da string`
echo ${#var}</p><p>31

`3 - Executa o conteúdo de $var (igual 'eval \$$var')`

echo ${!var}

`4 - Retorna os nomes de variáveis começadas por 'U'`

echo ${!U*}</p><p>UID USER USERNAME

`5 - Retorna o texto a partir da posição 7`
echo ${var:7}</p><p>www.terminalroot.com.br/

`6 - Retorna 8 caracteres a partir da posição 11`
echo ${var:11:8}</p><p>terminal

`7 - Corta 'http://' do início da string`
echo ${var#http://}</p><p>www.terminalroot.com.br/

`8 - Corta '.com.br/' do final da string`
echo ${var%.com.br/}</p><p>http://www.terminalroot

`9 - Substitui 'terminalroot' por 'aurelio', uma vez`
echo ${var/terminalroot/aurelio} </p><p>http://www.aurelio.com.br/

`10 - Substitui 'o' por 'O', sempre`
echo ${var//o/O}</p><p>http://www.terminalrOOt.cOm.br/

`11 - Se a string começar com 'http', substitui 'http' por 'Site'`
echo ${var/#http/Site}</p><p>Site://www.terminalroot.com.br/

`12 - Se a string terminar com 'te', substitui 'te' por 'TADO'`
var2="teste"</p><p>echo ${var2/%te/TADO}</p><p>tesTADO

`13 - "" (aspas duplas) protege uma string, mas reconhece $, \ e ` como especiais`
echo "$var"</p><p>http://www.terminalroot.com.br/

`14 - '' (aspas simples) protege uma string, mas reconhece $, \ e ` como especiais`
echo '$var'</p><p>$var

`15 - $'...' (cifrão antes de aspas simples) protege uma string completamente, mas interpreta \n, \t, \a, etc`
echo $'$var\n'</p><p>$var
</p><p>

`16 - `...` (entre crases) Executa comandos numa subshell, retornando o resultado`
echo `ls`</p><p>Área de trabalho Documentos Downloads Imagens Modelos Música Público Vídeos

`17 - Executa comandos numa subshell`
(ls)</p><p>Área de trabalho Documentos Downloads Imagens Modelos Música Público Vídeos

`18 - Executa comandos numa subshell, retornando o resultado`
echo $(ls)</p><p>Área de trabalho Documentos Downloads Imagens Modelos Música Público Vídeos

`19 - Testa uma operação aritmética, retornando 0 ou 1`
((11&gt;9))

`20 - Retorna o resultado de uma operação aritmética`
echo $((11-9))</p><p>2

`21 - Testa uma expressão, retornando 0 ou 1 (alias do comando 'test')`
[ 5 -gt 3 ] &amp;&amp; echo 'É maior!'</p><p>É maior!

`22 - Testa uma expressão, retornando 0 ou 1 (podendo usar && e ||)`
[[ $var ]] &amp;&amp; echo 'Existe essa variável'</p><p>Existe essa variável

`23 - Variáveis especiais`
Variável	Parâmetros Posicionais
$0
Parâmetro número 0 (nome do comando ou função)
$1
Parâmetro número 1 (da linha de comando ou função)
...
Parâmetro número N ...
$9
Parâmetro número 9 (da linha de comando ou função)
${10}
Parâmetro número 10 (da linha de comando ou função)
...
Parâmetro número NN ...
$#
Número total de parâmetros da linha de comando ou função
$*
Todos os parâmetros, como uma string única
$@
Todos os parâmetros, como várias strings protegidas
Variável	Miscelânia
$$
Número PID do processo atual (do próprio script)
$!
Número PID do último job em segundo plano
$_
Último argumento do último comando executado
$?
Código de retorno do último comando executado

`24 - Opções do comando test ou [`

Comparação Numérica
-lt
É menor que (LessThan)
-gt
É maior que (GreaterThan)
-le
É menor igual (LessEqual)
-ge
É maior igual (GreaterEqual)
-eq
É igual (EQual)
-ne
É diferente (NotEqual)
Comparação de Strings
=
É igual
!=
É diferente
-n
É não nula
-z
É nula
Operadores Lógicos
!
NÃO lógico (NOT)
-a
E lógico (AND)
-o
OU lógico (OR)
Testes em arquivos
-b
É um dispositivo de bloco
-c
É um dispositivo de caractere
-d
É um diretório
-e
O arquivo existe
-f
É um arquivo normal
-g
O bit SGID está ativado
-G
O grupo do arquivo é o do usuário atual
-k
O sticky-bit está ativado
-L
O arquivo é um link simbólico
-O
O dono do arquivo é o usuário atual
-p
O arquivo é um named pipe
-r
O arquivo tem permissão de leitura
-s
O tamanho do arquivo é maior que zero
-S
O arquivo é um socket
-t
O descritor de arquivos N é um terminal
-u
O bit SUID está ativado
-w
O arquivo tem permissão de escrita
-x
O arquivo tem permissão de execução
-nt
O arquivo é mais recente (NewerThan)
-ot
O arquivo é mais antigo (OlderThan)
-ef
O arquivo é o mesmo (EqualFile)
25 - Escapes especiais para usar no prompt (PS1)

Escape	Lembrete	Expande para...
\a	Alerta	Alerta (bipe)
\d	Data	Data no formato "Dia-da-semana Mês Dia" (Sat Jan 15)
\e	Escape	Caractere Esc
\h	Hostname	Nome da máquina sem o domínio (dhcp11)
\H	Hostname	Nome completo da máquina (dhcp11.empresa)
\j	Jobs	Número de jobs ativos
\l	Tty	Nome do terminal corrente (ttyp1)
\n	Newline	Linha nova
\r	Return	Retorno de carro
\s	Shell	Nome do shell (basename $0)
\t	Time	Horário no formato 24 horas HH:MM:SS
\T	Time	Horário no formato 12 horas HH:MM:SS
\@	At	Horário no formato 12 horas HH:MM am/pm
\A	At	Horário no formato 24 horas HH:MM
\u	Usuário	Login do usuário corrente
\v	Versão	Versão do Bash (2.00)
\V	Versão	Versão+subversão do Bash (2.00.0)
\w	Working Dir	Diretório corrente, caminho completo ($PWD)
\W	Working Dir	Diretório corrente, somente o último (basename $PWD)
\!	Histórico	Número do comando corrente no histórico
\#	Número	Número do comando corrente
\$	ID	Mostra "#" se for root, "$" se for usuário normal
\nnn	Octal	Caractere cujo octal é nnn
\\	Backslash	Barra invertida \ literal
\[	Escapes	Inicia uma seqüência de escapes (tipo códigos de cores)
\]	Escapes	Termina uma seqüência de escapes
`26 - Escapes reconhecidos pelo comando echo`

Escape	Lembrete	Descrição
\a	Alerta	Alerta (bipe)
\b	Backspace	Caractere Backspace
\c	EOS	Termina a string
\e	Escape	Caractere Esc
\f	Form feed	Alimentação
\n	Newline	Linha nova
\r	Return	Retorno de carro
\t	Tab	Tabulação horizontal
\v	Vtab	Tabulação vertical
\\	Backslash	Barra invertida \ literal
\nnn	Octal	Caractere cujo octal é nnn
\xnn	Hexa	Caractere cujo hexadecimal é nn
27 - Formatadores do comando date

Formato	Descrição
%a
Nome do dia da semana abreviado (Dom..Sáb)
%A
Nome do dia da semana (Domingo..Sábado)
%b
Nome do mês abreviado (Jan..Dez)
%B
Nome do mês (Janeiro..Dezembro)
%c
Data completa (Sat Nov 04 12:02:33 EST 1989)
%y
Ano (dois dígitos)
%Y
Ano (quatro dígitos)
%m
Mês (01..12)
%d
Dia (01..31)
%j
Dia do ano (001..366)
%H
Horas (00..23)
%M
Minutos (00..59)
%S
Segundos (00..60)
%s
Segundos desde 1º de Janeiro de 1970
%%
Um % literal
%t
Um TAB
%n
Uma quebra de linha
28 - Formatadores do comando printf

Formato	Descrição
%d
Número decimal
%o
Número octal
%x
Número hexadecimal (a-f)
%X
Número hexadecimal (A-F)
%f
Número com ponto flutuante
%e
Número em notação científica (e+1)
%E
Número em notação científica (E+1)
%s
String
29 - Para saber todas as variáveis locais, execute

set
ou, e abra o txt para ver depois

set &gt; VariaveisLocais.txt
30 - Variáveis globais, para saber todas as variáveis globais, execute

env
ou

printenv
31 - Para atribuir um valor a uma variável local

LINUX=free</p><p>echo $LINUX</p><p>free 
32 - verificar se a variável criada no item anterior aparece na relação de variáveis locais

set | grep LINUX</p><p>LINUX=free 
33 - Agora vamos tornar esta variável local em uma variável global

export LINUX</p><p>env | grep LINUX</p><p>LINUX=free
34 - Deletar uma 'variável de ambiente local' da memória usamos o comando unset

unset LINUX</p><p>echo $LINUX
</p><p>
35 - Criar um aliases ( apelido para um comando ou programa ), você ainda pode incluí-lo no seu ~/.bashrc

alias listar='ls -la color=auto'
36 - Destruir um aliase

unalias listar
37 - Verificar todos os comando digitados

history
executar o comando pelo número dele no history

!468
executar o último comando digitado

!!
eles ficam no bash_history

cat bash_history
limpar o history

history -c


`38 - Interpretadores de linha de comando`
$ - Shell de um usuário comum;
# - Shell do superusuário root (administrador)

Verificar dos os Shells disponíveis

cat /etc/shells
Variável que mostra o SHELL que você utiliza

echo $SHELL


`39 - Criando um Array (Arranjo) "conjunto de variáveis"`

DISTROS=( "Debian" "Trisquel" "Ubuntu" "RedHat")
Se você imprimir o Array DISTROS como variável, ele printará a variável 0 , o array exibe as variáveis nele contidas começando do 0 (zero), logo seria o mesmo de imprimir a ${DISTROS[0]}

echo $DISTROS


`40 - Imprimir o elemento 1 da array DISTROS`
echo ${DISTROS[1]}</p><p>Trisquel

`41 - Pode-se também criar um array inserindo elemento um de cada vez`
DISTROS[0]="Debian"</p><p>DISTROS[1]="Trisquel"</p><p>DISTROS[2]="Ubuntu"</p><p>DISTROS[3]="RedHat"

`42 - Alterar o elemento 2 do array DISTROS`
DISTROS[2]="Linux Mint"</p><p>echo ${DISTROS[2]}</p><p>Linux Mint

`43 - Exibir Distro do elemento 2 até o final`
echo&nbsp; ${DISTROS[@]:2} </p><p>Ubuntu RedHat

`44 - Esta exibe os elementos com início na posição 1 seguidos de mais dois elementos consecutivos à posição 1`
echo ${DISTROS[@]:1:2} </p><p>Trisquel Ubuntu

`45 - Saber quantos elementos possui o array DISTROS`
echo&nbsp; ${#DISTROS[@]} </p><p>4
     roff: ./BUILTIN.1                                

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------


http://aurelio.net/shell/canivete/

http://www.vivaolinux.com.br/artigo/Trabalhando-com-shell-e-variaveis-de-ambiente

http://www.vivaolinux.com.br/dica/Utilizando-arrays-em-shell-script

Terminal Root - http://www.terminalroot.com.br

bash(7), set(1), env(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
