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

*Exibir os nomes SAN do certificado*:
`echo | openssl s_client -connect bmail.uol.com.br:443 2> /dev/null | openssl x509 -noout -text | grep DNS:
                DNS:afmail.uol.com.br, DNS:mail.folha.uol.com.br, DNS:bmail.uol.com.br`

*Pegar o certificado*:
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
