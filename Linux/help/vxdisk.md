vxdisk(1) -- Descrição do programa MarkDown para gerar MiniMan Pages Próprias por Rafael Quirino.
===============================================


SYNOPSIS
--------

`vxdisk` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`vxdisk` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------

* `-i <DISK_NAME>`:
	Quando o disco está com status invalid, ele tira esse erro e poe *ONLINE*

* `-C` *config-file*:
  Use the alternate system wide *config-file* instead of */etc/foo.conf*. This
  overrides any `FOOCONF` environment variable.

* `-a`:
  In addition to the baz segments, also parse the blurfl headers.

* `-r`:
  Recursive mode. Operates as fast as lightning at the expense of a megabyte
  of virtual memory.

EXEMPLOS
--------

Obter os dados do MD_3000 (UUID/hostid/disk/group/info/flags/guid/udid,etc)

   `$> vmdisk list md3000_0`
	group:     name=NARUTO168_DG id=1247647907.16.naruto168-b
	info:      format=cdsdisk,privoffset=256,pubslice=3,privslice=3
	flags:     online ready private autoconfig autoimport imported
	pubpaths:  block=/dev/vx/dmp/md30000_0s3 char=/dev/vx/rdmp/md30000_0s3
	guid:      {b31b4574-1dd1-11b2-ae74-bd96287ddab0}
	udid:      DELL%5FMD3000%5F6002219000BEF44C0000000049D54E69%5F6002219000BEF44C000001F64A439E61




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

`-Para verificar o status do uso do disco, uma forma interessante é:`

      `$> while : ; do iostat ; sleep 2; done`
	  Device:            tps   Blk_read/s   Blk_wrtn/s   Blk_read   Blk_wrtn
	  sda               2.33        44.77        94.98    2800966    5941856
	  sdb               5.94        42.48        26.55    2657200    1660934
	  sdc             133.79      2185.01        55.95  136688223    3500200
	  sdd              78.07      1150.80       121.17   71991234    7580175
	  sde              78.52      1162.68       104.37   72734119    6528947
	  sdf               0.01         0.28         0.91      17289      56632
	  sdg               0.01         0.05         0.00       3424          0
	  sdh               0.01         0.05         0.00       3246          0
	  sdi               0.01         0.05         0.00       3424          0
	  dm-0              8.76         7.32        62.76     458192    3925808
	  dm-1              0.81         6.55         3.35     409970     209368
	  dm-2              0.79         4.21         5.86     263642     366328
	  dm-3              0.10         3.62         0.12     226714       7624
	  dm-4              1.35        16.51         8.57    1032634     536400
	  dm-5              1.90         6.00        14.33     375370     896296
	  VxVM32999         5.11        40.91        26.55    2559448    1660934
	  VxVM32998       133.80      2184.88        55.06  136680356    3444592
	  VxVM32997        78.10      1150.68       120.28   71983452    7524567
	  VxVM32996        78.54      1161.73       104.30   72674892    6524697


*Para exibir os discos e seus respectivos mapeamentos no linux:*

	  `$> [root@naruto168-b ~]# vxdisk -e list`
		DEVICE       TYPE           DISK        GROUP        STATUS               OS_NATIVE_NAME   ATTR
		disk_0       auto:LVM       -            -           online invalid       sda              -
		md30000_0    auto:cdsdisk   diskmd1      NARUTO168_DG online               sdb              -
		md30000_1    auto:cdsdisk   diskmd3      NARUTO168_DG online               sdd              -
		md30000_2    auto:cdsdisk   diskmd2      NARUTO168_DG online               sdc              -
		md30000_3    auto:cdsdisk   diskmd4      NARUTO168_DG online               sde              -

*Para exibir o status da controlador:*

		`$> [root@naruto168-b ~]#  vxdmpadm listenclosure
		ENCLR_NAME        ENCLR_TYPE     ENCLR_SNO      STATUS       ARRAY_TYPE     LUN_COUNT    FIRMWARE
		===================================================================================================
		disk              Disk           DISKS                CONNECTED    Disk        1         1028
		md30000           MD3000         6002219000BEF44C0000000049D54E69  CONNECTED    A/PF-LSI    4         0735



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
