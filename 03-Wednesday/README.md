## Wednesday Assignment

#### 1) Monitoring HTTP Headers 1
##### Observe and explain each of the values monitored (use view source to see the plain messages).

Headers er opdelt i General, Response og Request headers. 

##### General Headers:
* Request URL: URL requested af clienten
* Request Method: Om det er GET, POST, PUT, DELETE der ønskes
* Status Code: Kode indeholdt i response som svar på requesten, 200 er f.eks. OK
* Remote Address: IP-adresse og port på host.
* Referrer policy: information om foregående web side, der er forskellige politikker som kan følges, no-referrer-when-downgrade er standard

##### Request Headers  
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

##### Response Headers  
Efter modtagelse af en request vil web-serveren sende en Response Header tilbage til clienten. Indeholder headers med information om type, dato, størrelse af filen, samt information om serveren. 

* HTTP/1.1 304: Hvilken version af HTTP der bliver brugt i responset samt statuskoden
* ETag: Bruges i forbindelse med tjek for caching
* Date: Dato og tidspunkt for responset  
     
  
Første gang fk jeg statuskode 200 på index1.html. Efter ctrl+f5 fik jeg statuskode 200 på favicon.ico og statuskode 304 på index1.html. Dvs. index1.html er hentet fra cachen.  
304 - Resource has not been modified since the version specified by the request headers No need to retransmit the resource.  
200 - OK. Standard response for successful HTTP requests.  
  
  
#### 2) Monitoring HTTP Headers 2
##### Add an image to the page, add an external style sheet to the page and reload the page again, observe the request(s) being made, and explain the purpose of the connection header.

##### Connection-header kan være sat til enten:
Connection: close
Connection: keep-alive  
  
Connection-headeren styrer om en netværks-connection forbliver åben eller bliver lukket efter den nuværende transaktion. 
close: enten client eller server vil gerne lukke connectionen.   
keep-alive: clienten vil gerne have at connectionen forbliver åben. 

#### 3) Monitoring HTTP Headers 3  (Response-codes 3xx)
##### Explain the two requests:
302 - Found. Fortæller clienten at der skal kigges på en anden url
200 - OK. Standard svar for successfulde HTTP requests.  


##### How did the browser know where to look
Redirect-servletten laver et redirect til r.html for alle GET-requests.  


#### 3a) Redirecting to HTTPs instead of HTTP
Ved forsøg på tilgang af http://studypoints.info får jeg en statuskode 301 (Moved Permanently) og i responset kan jeg se at jeg kommer ind på https://studypoints.info   
  
  
#### 4a) Status Codes (5xx)
Statuskode 500 bliver sendt tilbage (Internal Server Error). Fejlbeskeden fra tomcat er “java.lang.ArithmeticException: / by zero” på grund af division med 0.   
  
  
#### 4b) Status Codes (4xx)
Statuskode 404 bliver sendt tilbage (Not found).  
  
  
#### 4c) Status Codes - Ranges
1xx (Informational): The request was received, continuing process  
2xx (Successful): The request was successfully received, understood and accepted  
3xx (Redirection): Further action needs to be taken in order to complete the request  
4xx (Client Error): The request contains bad syntax or cannot be fulfilled  
5xx (Server Error): The server failed to fulfill an apparently valid request  

#### 5) Get HTTP Request Headers on the Server
Når der benyttes GET sendes parametrene direkte i url’en, når der benytes POST sendes de i requestens body. 
![ ](https://i.imgur.com/adeSv1F.png)

#### 6) Get/Post-parameters

* GET  
![GET](https://i.imgur.com/nGJ767D.png)

* POST  
![POST](https://i.imgur.com/uUxwdCv.png)
![ ](https://i.imgur.com/LP2F1S7.png)






