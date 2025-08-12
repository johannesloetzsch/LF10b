# Mail
([seit 1965/1968](https://de.wikipedia.org/wiki/E-Mail#Geschichte))

[![](https://upload.wikimedia.org/wikipedia/commons/7/72/Wie_E-Mail_funktioniert.svg)](https://de.wikipedia.org/wiki/E-Mail#Zustellung_einer_E-Mail:_beteiligte_Server_und_Protokolle)


> **📝❗** FiSi AP2 Analyse Sommer 2022 Aufgabe 4
>
> **📝❗** FiSi AP2 Analyse Sommer 2023 Aufgabe 4


## MUA, MTA/MDA

* **M**ail **U**ser **A**gent (Client)
* **M**ail **T**ransfer **A**gent (SMTP-Server)
* **M**ail **D**elivery **A**gent (IMAP/POP3-Server)

> **💬❗** Wie unterscheiden sich POP3 und IMAP?
>
> Welche der Protokolle will man verwenden?

=> Immer die Protokoll-Varianten, die auf „S“ enden 😉
<br/>(TLS nutzen)

## [MX-Record](https://de.wikipedia.org/wiki/MX_Resource_Record)
**M**ail E**x**change **R**esource **R**ecord (MX-RR)

=> sagt aus, unter welchem FQDN der SMTP-Server einer Domäne erreichbar ist

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


## Aufbau einer E-Mail ([Kodierung](https://de.wikipedia.org/wiki/E-Mail#Technische_Details)) und Header
RFC 5322

=> nur Zeichen des 7-Bit-ASCII-Zeichensatzes
  => [Base64](https://de.wikipedia.org/wiki/Base64)

=> [MIME](https://de.wikipedia.org/wiki/Multipurpose_Internet_Mail_Extensions) (**M**ultipurpose **I**nternet **M**ail **E**xtensions)

Beispiel:
```
From: <adam@example.org>
To: <eva@example.org>
Subject: Umlaute dank MIME
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
```

### [Body](https://de.wikipedia.org/wiki/E-Mail#Body_%E2%80%93_der_Inhalt_der_E-Mail)
`Content-Type`-Header definiert den [MIME-Media-Typ](https://de.wikipedia.org/wiki/Multipurpose_Internet_Mail_Extensions#MIME_Part_2_%E2%80%93_Media_Types) des Body:
* text/plain
* text/html
* [multipart](https://de.wikipedia.org/wiki/Multipurpose_Internet_Mail_Extensions#multipart)
  * plain+html
  * [Anhänge](https://de.wikipedia.org/wiki/E-Mail#Attachments)
  * Signaturen

## Sicherheit

> [**💬❗**](https://de.wikipedia.org/wiki/E-Mail#Speicherung)
> Wo werden Mails gespeichert?
> * Welche Server haben zusätzlich während des Versands Zugriff?

> [**💬❗**](https://de.wikipedia.org/wiki/E-Mail#Authentizit%C3%A4t,_Datenschutz_und_Integrit%C3%A4t)
> Diskutieren Sie die Sicherheit von E-Mail im Bezug auf
> * Verfügbarkeit
> * Integrität, Authentizität
> * Vertraulichkeit, Anonymität
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
>
> Welche Grenzen haben die jeweiligen Maßnahmen?


> **💬** Was ist ein (offenes) SMTP-Relay?
> 
> Wofür werden [Smarthosts](https://de.wikipedia.org/wiki/SMTP-Relay-Server) benötigt?
>
> Welche Herausforderung hat man, wenn man im eigenen Heimnetz (z.B. DSL-Anschluss) einen Mailserver betreiben möchte?
> 
> Wie ist das, wenn man im Rechenzentrum einen Mailserver betreiben will?

> **💬❗** Was ist [E-Mail-Spoofing](https://de.wikipedia.org/wiki/E-Mail-Spoofing)?


### [SPF](https://de.wikipedia.org/wiki/Sender_Policy_Framework)
**S**ender **P**olicy **F**ramework

(seit 2003)

=> [Absender-Authentifizierung](https://de.wikipedia.org/wiki/E-Mail#Absender-Authentifizierung)

DNS-Record, der definiert welche MTAs für eine Domain Mails versenden dürfen (Im Gegensatz zum MX-Record, der die zuständigen Empfänger definiert). Die Empfänger können per [SPF-Record](https://de.wikipedia.org/wiki/Sender_Policy_Framework#Aufbau_eines_SPF-Records) herausfinden, ob der Absender gültig zu sein scheint. [1] [2] [3]

![](https://upload.wikimedia.org/wikipedia/commons/4/49/Sender_Policy_Framework.svg)

> **📝💬❗** FiSi AP2 Analyse Sommer 2023 Aufgabe 4bb

[1] SPF ist nicht [**F**inal **U**ltimate **S**olution to the **S**pam **P**roblem (FUSSP)](https://acronyms.thefreedictionary.com/Final+Ultimate+Solution+to+the+Spam+Problem)

[2] [Kritik and SPF](https://de.wikipedia.org/wiki/Sender_Policy_Framework#Kritik)

[3] [weitere Kritik and SPF](https://de.wikipedia.org/wiki/Sender_Policy_Framework#Kritik_2)

### [DKIM](https://de.wikipedia.org/wiki/DomainKeys_Identified_Mail)
**D**omain**K**ey **I**dentified **M**ail

RFC 6376
(seit 2006, [immer noch nicht von allen Servern unterstützt](https://de.wikipedia.org/wiki/DomainKeys_Identified_Mail#Unterst%C3%BCtzung))

=> [Absender-Authentifizierung](https://de.wikipedia.org/wiki/E-Mail#Absender-Authentifizierung)
, diesmal basierend auf [asymmetrischer Kryptographie](https://de.wikipedia.org/wiki/Asymmetrisches_Kryptosystem)

* Der SMTP-Server erzeugt ein asymmetrisches Schlüsselpaar
  * der Private Schlüssel wird geheim gehalten (!*💬)
  * der Öffentliche Schlüssel wird als TXT-Record per DNS veröffentlicht
* Mail-Body und vom Sender ausgewählte Header-Zeilen werden ge[hash](https://de.wikipedia.org/wiki/Kryptographische_Hashfunktion)ed und dann [signiert](https://de.wikipedia.org/wiki/Digitale_Signatur)
  * Hash und Signatur werden Base64 kodiert in Mail-Header „**DKIM-Signature**“ versendet
* Der Empfänger einer Mail kann eine Verifikation durchführen, indem er:
  1. den Hash selbst neu berechnet und prüft
  2. den öffentlichen Schlüssel der Absender-Domain **per DNS** (!*💬) abfragt (DKIM TXT-RR)
  3. die Signatur über den Hash mittels des öffentlichen Schlüssels prüft

![](https://upload.wikimedia.org/wikipedia/commons/2/29/Orange_blue_digital_signature_de.svg)

Da DNS als [Vertrauensanker](https://de.wikipedia.org/wiki/Vertrauensanker)/[PKI](https://de.wikipedia.org/wiki/Public-Key-Infrastruktur) verwendet wird, sollte (!*) **DNSSEC** eingesetzt werden.

> **💬❗** Inwieweit hilft DKIM gegen Spam und Phishing?

> **💬❗** Wie sollte mit Mails umgegangen werden, die nicht DKIM-signiert sind?

### [DMARK](https://de.wikipedia.org/wiki/DMARC)
**D**omain-based **M**essage **A**uthentication, **R**eporting and **C**onformance

=> im DNS wird für Absender-Domain eine DMARC-Richtlinie veröffentlicht, ob/wie SPF und DKIM eingesetzt werden

> [**💬**](https://de.wikipedia.org/wiki/DMARC#Kritik) Welche Probleme mit DMARC gibt es?


### Verschlüsselung (und Ende-zu-Ende-Signaturen)
Verbindungsorientiert (TLS) vs. [Ende-zu-Ende (S/MIME)](https://de.wikipedia.org/wiki/S/MIME)

Web-of-Trust ([PGP](https://de.wikipedia.org/wiki/OpenPGP)) vs. PKI ([X.509](https://de.wikipedia.org/wiki/X.509))

> **💻❗** MUA „sicher“ konfigurieren


#### [<img alt="pEP logo" src="https://upload.wikimedia.org/wikipedia/commons/a/a0/P%E2%89%A1p_logo.svg" style="height: 1em"/>](https://de.wikipedia.org/wiki/Pretty_Easy_privacy)

**p**retty **E**asy **p**rivacy

#### [<img alt="CAcert logo" src="https://upload.wikimedia.org/wikipedia/de/f/f4/Logo_CAcert.svg" style="height: 1em"/>](https://de.wikipedia.org/wiki/CAcert)

=> nichtkommerzielle **C**ertification **A**uthority
