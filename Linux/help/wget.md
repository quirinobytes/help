wget(1) -- wget cliente html para linha de comando
===============================================

NOME
----

`wget` - wget é utilizado para fazer REQUISIÇÕES HTTP, baixar arquivos, acessar sites.

SYNOPSIS
--------

`wget` [`-opções`] [`-c` *config-file* ] *URL*

DESCRIÇÃO
---------

`wget` é uma aplicação cliente para realizar requisições HTML, pode ser usado tanto para protocolo HTTP, HTTPS, FTP, entre outros.

Permite baixar arquivos com uma série de opções.

OPÇÕES
------

* `--user-agent= Mozilla/5.0 | Chrome/23.0.1271.97 | Safari/537.11`:
  Você pode explicitar uma versão específica de Navegador

* `--secure-protocol= auto|SSLv2|SSLv3|TLSv1` :
  Usado para indicar a versão do protocolo SSL que pode ser utilizado.

* `--post-data 'user=foo&password=bar&uuid=0x123'`:
  Usado para indicar os dados a serem enviados via formulário método POST

* `--save-cookies= $COOKIE_FILE`:
  Usado para indicar o nome do arquivo onde salvar os cookies.

* `--load-cookies=$COOKIE_FILE`:
  Usado para indicar o nome do arquivo para carregar os cookies.

* `--keep-session-cookies`:
  Usado para forçar manter as sessões de cookie.

* `--no-check-certificate`:
  Usado para NÃO chegar se o certificado é falso.

EXEMPLOS
--------

1. Exemplo de Wget
SSO_TOKEN=`echo $SSO_RESPONSE| cut -d '=' -f 2|cut -d ' ' -f 1`
SSO_SERVER=`echo $SSO_RESPONSE| cut -d ' ' -f 2|cut -d '/' -f 1,2,3`
SSO_AUTH_URL=/sso/auth
AUTH_DATA="ssousername=$SSO_USERNAME&password=$SSO_PASSWORD&site2pstoretoken=$SSO_TOKEN"

   `$> wget --user-agent="Mozilla/5.0" --secure-protocol=auto --post-data $AUTH_DATA --save-cookies=$COOKIE_FILE --keep-session-cookies $SSO_SERVER$SSO_AUTH_URL -O sso.out >> $LOGFILE 2>&1`


2. exemplo de Wget
$WGET --user-agent="Mozilla/5.0" --secure-protocol=auto --post-data $AUTH_DATA --save-cookies=$COOKIE_FILE --keep-session-cookies $SSO_SERVER$SSO_AUTH_URL -O sso.out >> $LOGFILE 2>&1

ENVIRONMENT
-----------

Alternativamente você poderá indicar o Agent utilizado para realizar o REQUEST, as vezes isso influencia:
Use o seguinte parametro:

--user-agent="Mozilla/5.0"

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
