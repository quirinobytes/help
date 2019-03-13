getopts(1) - Usado para pegar as opçoes via linha de comando.
===============================================


SYNOPSIS
--------

`getopts` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`getopts` é um documento escrito para facilitar a crição de documentos a partir de um template.
Com a MARCAÇÃO *markup* é possível gerar Man Pages usando o comando **ronn**. Veja mais em ronn(1).
Necessita Ruby >= 2.0 com Mustache para funcionar..

OPÇÕES
------
...

EXEMPLOS
--------

*
#################################
### Start of main program
#################################
while getopts abinvFe:f:c:hk:p:s:qx: option
do
    case "${option}"
    in
        a) ALARM="TRUE";;
        b) NOHEADER="TRUE";;
        c) CERTFILE=${OPTARG};;
        e) ADMIN=${OPTARG};;
        f) SERVERFILE=$OPTARG;;
        h) usage
           exit 1;;
        i) ISSUER="TRUE";;
        k) PKCSDBPASSWD=${OPTARG};;
        n) NAGIOS="TRUE";;
        p) PORT=$OPTARG;;
        s) HOST=$OPTARG;;
        q) QUIET="TRUE";;
        v) VALIDATION="TRUE";;
        x) WARNDAYS=$OPTARG;;
        F) FAKE="TRUE";;
       \?) usage
           exit 1;;
    esac
done
*


*outro exemplo*:

`#!/bin/bash
 
function PrintUsage() {
   echo "Uso: `basename $0` <-umsf> [-ohv]"
   exit 1
}
 
while getopts "hvo:umsf" OPTION
do
   case $OPTION in
      h) PrintUsage
         ;;
      v) echo "`basename $0` versao 666."
         exit
         ;;
      o) ARQUIVO_LOG=$OPTARG
         ;;
      u) DO_UNAME=1
         ;;
      m) DO_FREE=1
         ;;
      s) DO_SWAPON=1
         ;;
      ?) PrintUsage
         ;;
   esac
done
shift $((OPTIND-1))
 
if [ -z "$DO_UNAME" ] && [ -z "$DO_FREE" ] && [ -z "$DO_SWAPON" ] && [ -z "$DO_FDISK" ]; then
   PrintUsage
fi
 
if [ "$ARQUIVO_LOG" ]; then   echo "Execucao iniciada em `date`." >> $ARQUIVO_LOG
 
   if [ "$DO_UNAME" == 1 ]; then
      uname -a >> $ARQUIVO_LOG
   fi
 
   if [ "$DO_FREE" == 1 ]; then
      free -m >> $ARQUIVO_LOG
   fi
 
   if [ "$DO_SWAPON" == 1 ]; then
      swapon -s >> $ARQUIVO_LOG
   fi
else
   echo "Execucao iniciada em `date`."
   if [ "$DO_UNAME" == 1 ]; then
      uname -a
   fi
 
   if [ "$DO_FREE" == 1 ]; then
      free -m
   fi
 
   if [ "$DO_SWAPON" == 1 ]; then
      swapon -s
   fi
fi`



AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
