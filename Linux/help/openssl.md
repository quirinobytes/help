openssl(1) -- Criar e fazer testes com certificado digital.
===============================================


SYNOPSIS
--------

`openssl` [`-options`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`openssl` Usado para enviar request de Certificado, criar, gerar e testar certificados difitais.


OPÇÕES
------

* `-connect` *hostname* :
   Conectar usando o hostname a seguir.

EXEMPLOS
--------

Coloque os exemplos aqui:

   `$> openssl s_client -connect srvhost:443 > /tmp/cert.crt`

ARQUIVOS
--------


*/etc/ssl*
	Arquivos de certificado, etc.


DIAGNOSTICS
-----------

Use o seguinte site abaixo para realizar o teste do Certificado.

**https://www.sslshopper.com/ssl-checker.html**

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

openssl(5), curl(1), wget(1) [Linux Man Page Howto](
