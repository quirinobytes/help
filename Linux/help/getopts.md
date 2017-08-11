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

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
