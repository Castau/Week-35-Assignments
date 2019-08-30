## Wednesday Assignment

#### 1) Monitoring HTTP Headers 1
#### *Observe and explain each of the values monitored (use view source to see the plain messages).

Headers er opdelt i General, Response og Request headers. 

General Headers:
* Request URL: URL requested af clienten
* Request Method: Om det er GET, POST, PUT, DELETE der ønskes
* Status Code: Kode indeholdt i response som svar på requesten, 200 er f.eks. OK
* Remote Address: IP-adresse og port på host.
* Referrer policy: information om foregående web side, der er forskellige politikker som kan følges, no-referrer-when-downgrade er standard

Request Headers
Indeholder headers med information såsom type, browser information, information om OS, hvilken siden der er requested, hvilke output der accepteres, hvilke sprog der accepteres osv. 

* Accept: hvilke fil-typer der accepteres i responset
* Accept-Encoding: hvilken encodig der accepteres
* Accept-Language: hvilke sprog der accepteres
* Connection: information om clienten ønsker at holde connection åben til efterfølgende transaktioner
* Host: adresse på ressourcen der ønskes
* If-None-Match: specificering af entity-tag serveren udstedte med ressourcen sidste gang den blev modtaget
* If-Modified-Since: tidspunkt for hvornår browseren sidste gang modtog request-ressourcen
* Upgrade-Insecure-Requests: Upgradering fra HTTP til HTTPS hvis det er tilgængeligt.
* User-Agent: Information om clientens browser, OS med mere

Response Headers:
Efter modtagelse af en request vil web-serveren sende en Response Header tilbage til clienten. Indeholder headers med information om type, dato, størrelse af filen, samt information om serveren. 

Response Headers
* HTTP/1.1 304: Hvilken version af HTTP der bliver brugt i responset samt statuskoden
* ETag: Bruges i forbindelse med tjek for caching
* Date: Dato og tidspunkt for responset

Første gang fk jeg statuskode 200 på index1.html. Efter ctrl+f5 fik jeg statuskode 200 på favicon.ico og statuskode 304 på index1.html. Dvs. index1.html er hentet fra cachen.  
304 - Resource has not been modified since the version specified by the request headers No need to retransmit the resource.  
200 - OK. Standard response for successful HTTP requests.  

