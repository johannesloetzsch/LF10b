# Mail

[![](https://upload.wikimedia.org/wikipedia/commons/7/72/Wie_E-Mail_funktioniert.svg)](https://de.wikipedia.org/wiki/E-Mail#Zustellung_einer_E-Mail:_beteiligte_Server_und_Protokolle)


> **📝❗** FiSi AP2 Analyse Sommer 2022 Aufgabe 4
>
> **📝❗** FiSi AP2 Analyse Sommer 2023 Aufgabe 4


## MUA, MTA/MDA

* **M**ail **U**ser **A**gent (Client)
* **M**ail **T**ransfer **A**gent (SMTP-Server)
* **M**ail **D**elivery **A**gent (IMAP/POP3-Server)

## MX-Record

> **💻❗** Beispiel
> ```sh
> dig any afbb.de
> ```
> ```
> ;; ANSWER SECTION:
> […]
> afbb.de.                21600   IN      MX      1 afbb-de.mail.protection.outlook.com.
> afbb.de.                600     IN      TXT     "v=spf1 include:spf.protection.outlook.com include:spf.emailsignatures365.com include:mx-smtp-out.mtl-servers.de -all"
> ```
>
> ```sh
> dig any afbb-de.mail.protection.outlook.com
> ```
> ```
> ;; ANSWER SECTION:
> afbb-de.mail.protection.outlook.com. 10 IN AAAA 2a01:111:f403:ca04::5
> ```


> **📝💬❗** FiSi AP2 Analyse Sommer 2023 Aufgabe 4ba


## Aufbau einer E-Mail und Header


## Sicherheit

> [**💬❗**](https://de.wikipedia.org/wiki/E-Mail#Authentizit%C3%A4t,_Datenschutz_und_Integrit%C3%A4t)
Diskutieren Sie die Sicherheit von E-Mail im Bezug auf
> * Verfügbarkeit
> * Integrität, Authentizität
> * Vertraulichkeit
>
> Welche Gefahren gehen jeweils aus von
> * Servern (MTA, MDA, NS, …, DC)
> * Clients (MUA, Client-Arbeitsumgebung)
> * Dritten
>   * Innentäter aus dem Unternehmen (Kollegen, Kunden, Gäste, …)
>   * Botnetzen (Spammer, (Spear-)Phishing, Würmer)
>   * …
> 
> Wie kann man sich schützen?


> **💬** Was ist ein (offenes) SMTP-Relay?


### SPF
**S**ender **P**olicy **F**ramework

> **📝💬❗** FiSi AP2 Analyse Sommer 2023 Aufgabe 4bb

### DKIM
**D**omain**K**ey **I**dentified **M**ail

### DMARK
**D**omain-based **M**essage **A**uthentication, **R**eporting and **C**onformance

### Verschlüsselung
Verbindungsorientiert vs. Ende-zu-Ende

Web-of-Trust (PGP) vs. PKI (S/MIME)
