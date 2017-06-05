findstr.md(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`findstr.md` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`findstr.md` é um documento escrito para facilitar a crição de documentos a partir de um template.

OPÇÕES
------
The Windows findstr has one interesting
feature that differs from grep. If you need
to search for multiple strings, you need to
separate them with a space.
For example, you want or need to look for a
match for WHITE or GREEN in a text file, you
write your command like this:
findstr "WHITE GREEN" textfile
To make the search case insensitive, add the
/I to print all variant of WHITE or GREEN.
Windows findstr Command List
/B Matches pattern if at the beginning of
 a line.
/E Matches pattern if at the end of a
line.
/L Uses search strings literally.
/R Uses search strings as regular
expressions.
/S Searches for matching files in the
current directory and all
subdirectories.
/I Specifies that the search is not to be
case-sensitive.
/X Prints lines that match exactly.
/V Prints only lines that do not contain
a match.
/N Prints the line number before each
line that matches.
/M Prints only the filename if a file
contains a match.
/O Prints character offset before each
matching line.
/P Skip files with non-printable
characters. 



EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> date '%Y/%m/%d'`


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
