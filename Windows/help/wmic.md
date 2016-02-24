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

wmic useraccount where (name='administrator' and domain='%computername%') get name,sid
Get SID for the domain administrator

wmic useraccount where (name='administrator' and domain='%userdomain%') get name,sid

Executar o comando em uma rede inteira 192.168.1.0/24
 `$> (FOR /L %s IN (1,1,254) DO wmic /node:192.168.0.%s /user:administrator /password:pass bios get serialnumber) >> c:\results.txt`
 `$> wmic /node:@nodes.txt /user:administrator /password:mypassword /output:out.csv bios get serialnumber /format:csv`

Executar o comando para um arquivo de servidores.txt
 `$> (FOR /L %s IN (1,1,254) DO wmic /node:@servidorex.txt /user:administrator /password:pass bios get serialnumber) >> c:\results.txt`

Recuperar todos os programas e versão instalados no computador

 `$> wmic product get name,version /format:htable >> x:\%computername%.html`


Recuperar informações sobre as HBA

 `$>wmic /namespace:\\root\WMI PATH MSFC_FCAdapterHBAAttributes`

Remover um programa

 `$> product where name="Adobe Reader X" call uninstall`

Exemplo de como Iniciar e Terminar um processo


Exemplo de help para o process

`wmic:root\cli process /?`

Exemplo de uso de parametros

`wmic:root\cli PATH SMS_R_System.LastLogonUserName='PTHOMSEN'` 

Exemplo de uso com PROCESS (Win32_Process) / Starting and Exiting

`

$> WMIC PROCESS CALL Create "calc.exe"

$> WMIC PROCESS WHERE Name="calc.exe" CALL Terminate

$> WMIC PROCESS WHERE Name="explorer.exe" call SetPriority 64

Identico a: 

$> WMIC PATH Win32_Process WHERE Name="explorer.exe" call SetPriority 64



2.0             Data display:
 

WMIC PROCESS WHERE "name like '%HOST%'"

WMIC PATH Win32_Process WHERE "name like '%HOST%'"

WMIC PROCESS WHERE “Name=svchost.exe” LIST Statistics

WMIC PROCESS WHERE “Name=svchost.exe” LIST BrieF

WMIC PROCESS WHERE (Name='svchost.exe') GET name, processid

WMIC PROCESS WHERE “Name=svchost.exe” GET name,processid /VALUE

WMIC PROCESS GET /FORMAT:htable

WMIC PROCESS GET /FORMAT:”c:\windows\system32\wbem\htable.xsl” 

WMIC PROCESS GET /FORMAT:hform 

WMIC PROCESS GET /FORMAT:csv

 

4.0      Data output:

 

WMIC BIOS > mydata.txt

WMIC OS >> mydata.txt

WMIC /APPEND:mydata.txt PAGEFILE

WMIC /OUTPUT:output.txt OS

WMIC /OUTPUT:CLIPBOARD BIOS

 

3.0             Data creation:

 

WMIC /NAMESPACE:\\root\default PATH __Namespace CREATE Name=test

 

4.0             Data deletion:

 

WMIC /NAMESPACE:\\root\default PATH __Namespace WHERE Name="test" DELETE

WMIC /NAMESPACE:\\root\subscription PATH __EventFilter WHERE __CLASS="__EventFilter" DELETE

 

5.0             Security and connection:

 

Delegate authority

WMIC /node:"computer1" /IMPLEVEL:Delegate /AUTHORITY:"Kerberos:domain\computer1" OS

 

WMIC /NODE:"computer1.domainofcomputer1.org" /AUTHLEVEL:Pktprivacy BIOS

 

 

6.0             Batch scripting:

 

WMIC.EXE /OUTPUT:WMICLASSES.txt /NAMESPACE:\\root\wmi PATH WDMClassesOfDriver GET Classname

for /f "usebackq skip=1" %%I in (``type WMICLASSES.txt``) DO WMIC.exe /namespace:\\root\wmi PATH %%I

 

WMIC PROCESS GET /FORMAT:"%windir%\system32\wbem\csv.xsl" >> c:\1.csv

`

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

wmic(5), powershell(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
