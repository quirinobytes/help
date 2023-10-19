input-leap(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`input-leap` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`input-leap` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..


apt-get install -y \
                  cmake \
                  g++ \
                  git \
                  libavahi-compat-libdnssd-dev \
                  libcurl4-openssl-dev \
                  libice-dev \
                  libsm-dev \
                  libssl-dev \
                  libxinerama-dev \
                  libxrandr-dev \
                  libxtst-dev \
                  libxkbcommon-dev \
                  libglib2.0-dev \
                  ninja-build \
                  qtdeclarative5-dev \
                  qttools5-dev \
                  meson


*/etc/input-leap.conf
  The system wide configuration file. See foo(5) for further details.

*~/home/krn/.local/share/InputLeap/.input-leap.conf
  Per user configuration file. See foo(5) for further details.


DIAGNOSTICS
-----------


**--debug DEBUG2.**
  Mostrar o máximo de erros.

**Old style baz segments.**
  `foo` can only handle new style baz segments. COBOL object libraries are not
  supported in this version.

COMENTÁRIOS
-----------

problemas com layout: tente usar microsoft basic se for teclado MS wireless, nos dois, client e server.

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
