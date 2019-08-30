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
* Resultat:
![ ](https://i.imgur.com/adeSv1F.png)

#### 6) Get/Post-parameters

Når der benyttes GET sendes parametrene direkte i url’en, når der benytes POST sendes de i requestens body.  

* GET  
![GET](https://i.imgur.com/nGJ767D.png)

* POST  
![POST](https://i.imgur.com/uUxwdCv.png)
![ ](https://i.imgur.com/LP2F1S7.png)

#### 7) Sessions (Session Cookies) 
Når jeg indtaster mit navn og trykker submit, er der en cookie request header 
* Cookie: JSESSIONID=6B63F3567FD16762587352294BB79F20  
![ ](https://i.imgur.com/bCB5pui.png)  


Lukning af vinduet og reloading på en ny fane ændrer ikke på cookien. Hvis jeg fjerner requestparametrene så det bare er /SessionDemo jeg loader, så er cookien også stadig den samme.  

![ ](https://i.imgur.com/dXfiQSS.png)  


En cookie er data der oprettes af serveren og gemmes hos clienten, via browseren, som serveren bruger til at indsamle data fra eller genkende clienten i efterfølgende requests.  
En session-cookie eksisterer kun i midlertidig hukommelse mens clienten bruger websiden. Normalt slettes session-cookies når browseren lukkes. Session-cookies har ikke en udløbsdato, hvilket er måden hvorpå browseren genkender at det er en session-cookie. 

##### Cookie-attributer:
Name: Navnet på cookien
Value: Værdien
Domain: Den host der har tilladelse til at modtage cookien
Path: Den URL del der skal eksistere for at kunne sende cookie-headeren 
Expires / Max-Age: Cookiens udløbsdato eller alder. Session-cookies har altid værdien Session
Size: Størrelsen angivet i bytes
HTTP: Hvis angivet til true må cookien kun sendes over HTTP og JavaScript-modifikationer er ikke tilladt.
Secure: Hvis angivet til true kan cookien sendes over en sikker HTTPS connection
SameSite: Hvis strict må requests kun sendes fra samme origin som target domain, kan være strict eller lax


#### 8) Persistent Cookies
Ligesom i opgaven ovenfor slipper jeg ikke af med cookien ved at lukke browseren, men det er ikke en Session-cookie. Forskellen her er at cookien ikke er lavet via session-objektet (request.getSession()), men via et Cookie-objekt i javakoden som en persistent cookie.  
Persistent cookies udløber ikke når browseren lukkes, men efter en specifik rum tid. I dette tilfælde er det et år. I al den tid gemmes cookien hos clieten og bliver sendt med når clienten laver en request til serveren. I dette tilfælde er der gemt information om username i cookien.

![ ](https://i.imgur.com/I6nwXao.png)  





