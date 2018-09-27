markdown(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`markdown` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`markdown` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..



1. Negrito (`*`)
	- \*\*This is a bold text\*\*  	
	- **This is a bold text** 

1. Sublinhado (`* *`)
	- \*sublinhado\*
	- *sublinhado*

2. Escape character (`\`)
	- \\\*our-new-project\\\*  
	- \*our-old-project\*

3. Tarefas ( `[x]` )
	- [x] Primeira tarefa
	- [ ] Segunda
	- [ ] Terceira

4. Bullets  (*)
	* Pilotos Raiz
	* Pilotos Nutela
	* Pilotos Mortadela

5. Listas Enumeradas 
	\1. Texto
	\2. Outra linha
	\3. Na linha de baixo.
	1. Texto
	2. Outra linha
	3. Na linha de baixo.



VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
