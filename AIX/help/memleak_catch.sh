##### AIX HELP
#
#
# memleak_catch.sh
#

Usado para detectar memory leak usando dois prints do comando ps vw <PID> antes e depois.

executar um 

	$> ps vw <PID> > ps_vg.before

e depois de um tempo outro


	$> ps vw <PID> > ps_vg.after


depois de posse desse dois arquivos executar o memleak_catch.sh dentro dessa pasta que tem esses arquivos.




