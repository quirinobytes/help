wmic(1) -- wmic Windows Management Intrumentation Command
===============================================

NOME
----

`wmic` - wmic de cliente do WMI que permite executar comandos wmi nos hosts Windows.

SYNOPSIS
--------

`wmic` [`/namespace:root\WMI`] [`PATH` *CLASS-NAME* ] 

DESCRIÇÃO
---------

`wmic` é usado para enviar comandos para o sistema operacional via WMI.
É possível recuperar todo tipo de informação do Sistema Operacional, como serial number, hostname, programas instalados, numeros das interfaces de rede, HBA, etc.

OPÇÕES
------

* `/namespace:`:
  Pode ser usado para indicar o Namespace desejado, no caso /namespace:\\root\WMI

* `PATH CLASS-NAME`:
  Usado para definir a classe usada para executar o comando que deseja as informações .

* `product get name`:
  Comando para exibir todos os programas instalados

* `bios get serialnumber`:
  Exibe o numero serial da máquina.


EXEMPLOS
--------

Recuperar informações sobre as HBA

   `$>wmic /namespace:\\root\WMI PATH MSFC_FCAdapterHBAAttributes`

Remover um programa

    `$> product where name="Adobe Reader X" call uninstall`

Exemplo de como Iniciar e Terminar um processo

` PROCESS (Win32_Process) / Starting and Exiting

$> WMIC PROCESS CALL Create "calc.exe"

$> WMIC PROCESS WHERE Name="calc.exe" CALL Terminate

$> WMIC PROCESS WHERE Name="explorer.exe" call SetPriority 64

Identico a: 

$> WMIC PATH Win32_Process WHERE Name="explorer.exe" call SetPriority 64`

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

wmic(5), powershell(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
