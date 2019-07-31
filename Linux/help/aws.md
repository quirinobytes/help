aws(1) -- Comando para administrar a AWS
===============================================


SYNOPSIS
--------

`aws` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`aws cli` é um comando para administrar a AWS.

OPÇÕES
------

* `--profile <PROFILE_NAME>`:
  

EXEMPLOS
--------

[AWS CLI]

DynamoDB - put-item:
   `$> aws dynamodb put-item --table-name MusicCollection --item file://item.json --return-consumed-capacity TOTAL`

DynamoDB - put-item:
  `$> aws dynamodb put-item --table-name MusicCollection --item '{"Artist": {"S": "Obscure Indie Band"}}' --condition-expression "attribute_not_exists(Artist)" `


Cloudformation - create-stack:
  `$> aws cloudformation create-stack --stack-name MyStackResources --template-body file://template.yml --parameters ParameterKey=KeyPairName,ParameterValue=TestKey ParameterKey=SubnetIDs,ParameterValue=SubnetID1\\,SubnetID2`


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
