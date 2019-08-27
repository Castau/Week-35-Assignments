## Tuesday Assignment

#### What is your public IP address right now, and how did you find it?
Login på router/search google - 2.106.16.17

#### What is your private IP address right now (do this both at home and in school), and who/what gave you that address?
Ipconfig i cmd: 192.168.1.37 - routeren har givet mig den (hjemme)
Ipcinfig i cmd: 192.168.56.1 - skole
What’s special about these address ranges?
10.0.0.0 – 10.255.255.255
172.16.0.0 – 172.31.255.255 
192.168.0.0 – 192.168.255.255
Lokal kommunikation på et lokalt netværk (Intranet og mere komplicerede interne netværk).

#### What’s special about this ip-address: 127.0.0.1?
Som udgangspunkt localhost for alle maskiner (det eneste de ved om sig selv før de kommer på et netværk).

#### What kind of service would you expect to find on a server using these ports: 
22, Secure Shell (SSH)
23, Telnet
25, Simple Mail Transfer Protocol (gmal osv - gammeldags er pop3)
53, DNS 
80, HTTP
443 HTTPS

#### What is the IP address of studypoints.dk and how did you find it?
Tracert studypoints.info → 157.230.21.145

#### If you write https://studypoints.dk in your browser, how did “it” figure out that it should go to the IP address you discovered above?
A-record er sat til studypoint.info hos domæneudbyderen

#### Explain shortly the purpose of an ip-address and a port-number and why we need both
Ip-adressen er for at vide hvor data/pakken skal sendes til/kommer fra og port nummeret er hvilken process/applikation der skal bruge data/pakken (interne på maskinen, hvor skal data/pakken hen). 

#### What is your (nearest) DNS server?
Lokalt, min router (Ipconfig i cmd → 192.168.1.1 (indbygget i routeren))
Min internetudbyders (yousee), er den første jeg rammer

#### What is (conceptually) the DNS system and the purpose with a DNS Server?
DNS serveren oversætter domænenavn til ip-adresse

#### What is your current Gateway, and how did you find it?
Ipconfig i cmd → 192.168.1.1 (indbygget i routeren)

#### What is the address of your current DHCP-Server, and how did you find it?
Ipconfig i cmd → 192.168.1.1 (indbygget i routeren)

#### Explain (conceptually) about the TCP/IP-protocol stack
* Data Link layer → lokalt netwærks-scope (Ethernet)
* Internet layer → internet protocol (IP), connection mellem netværk
* Transport layer → host-host kommunikation lokalt/globalt (TCP)
* Application layer → Processer/applikationer kommunikation af data lokalt/globalt (HTTP/HTTPS)  
Data sendes som pakker/”kuverter” gennem de forskellige lag

#### Explain about the HTTP Protocol (the following exercises will go much deeper into this protocol)
Hypertext Transfer Protocol → HTTP er en protokol der beder en server på TCP-port 80 om specifikke ressourcer. Serveren svarer med HTTP-protokolkode for at angive det overordnede resultat af anmodningen, og derefter typisk selve ressourcen. (Applikationslagsprotokol)

#### Explain (conceptually) how HTTP and TCP/IP are connected (what can HTTP do, and where does it fit into TCP/IP)
Transmission Control Protocol → http-besked bliver pakket ned i en tcp-pakke som får tildelt port 80. SSH er også en tcp-pakke, men med port 22. 
