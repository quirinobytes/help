lsvg(1) -- lsvg para minhas man pages v1.0
===============================================

NOME
----

`lsvg` - lsvg exibe as informações do VG.

SYNOPSIS
--------

`lsvg` [`OPCOES`] LG-volume-name

DESCRIÇÃO
---------

`lsvg` é usado para exibir informações sobre o VG. No AIX o rootvg é o VG padrão do sistema.

OPÇÕES
------


EXEMPLOS
--------

lsvg -p rootvg ( displays all PVs that are contained in rootvg.)

# lsvg -p rootvg ( displays all PVs that are contained in rootvg.)

# lsvg -M <hdiskname> ( displays the map of all physical partitions located on <hdiskname>.)

# lsvg -M <hdiskname> ( shows that all partitions of <hdiskname> are not allocated.)

# migratepv <hdiskname> <hdiskname>( migrates the data from <hdiskname> to <hdiskname>)

# lspv -M <hdiskname> ( confirms that <hdiskname> has all partitions free.)

# chpv -c <hdiskname> ( clears the boot record from <hdiskname>.)

# lspv -M <hdiskname> ( confirms that all physical partitions have been migrated to <hdiskname>.)

ARQUIVOS
--------

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
