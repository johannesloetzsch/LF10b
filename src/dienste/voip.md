# [VoIP](https://de.wikipedia.org/wiki/IP-Telefonie), Videokonferenzsysteme, WebRTC und QoS
**V**oice **o**ver **IP** (VoIP)
=> Internettelefonie

> **📝💬❗** FiSi AP2 Analyse Sommer 2022 Aufgabe 4

<!-- toc -->

![](https://upload.wikimedia.org/wikipedia/commons/e/e6/VoIP-voice-data-german.svg)

## [SIP/SIPS](https://de.wikipedia.org/wiki/Session_Initiation_Protocol)
**S**ession **I**nitiation **P**rotocol

RFC 3261, RFC 5630

=> Signalisierungsprotokoll (zum Verbindungsaufbau)

## [RTP](https://de.wikipedia.org/wiki/Real-Time_Transport_Protocol)
**R**eal-Time **T**ransport **P**rotocol

RFC 3550

=> [Echtzeit](https://de.wikipedia.org/wiki/Echtzeitsystem#Harte,_weiche_und_feste_Echtzeit)übertragung (*💬) von  Multimedia-Datenströme (Audio, Video, Text, …)

* nutzt UDP
* Unicast und Multicast möglich

* nutzt Codecs (z.B. [JPEG](https://de.wikipedia.org/wiki/JPEG), [H.261](https://de.wikipedia.org/wiki/H.261), [H.263](https://de.wikipedia.org/wiki/H.263), …)


### [SRTP](https://de.wikipedia.org/wiki/Secure_Real-Time_Transport_Protocol)
Secure Real-Time Transport Protocol

RFC 3711

=> Verbindungsverschlüsselte Variante von RTP


## [WebRTC](https://de.wikipedia.org/wiki/WebRTC)
**Web** **R**eal-**T**ime **C**ommunication

(seit 2011)

=> W3C-/IETF-Standart, der mittlerweile von allen verbreiteten Browsern unterstützt wird

* basiert auf [HTML5](https://de.wikipedia.org/wiki/HTML5) und [JavaScript](https://de.wikipedia.org/wiki/JavaScript)
* Verschlüsselung über [DTLS](https://de.wikipedia.org/wiki/Datagram_Transport_Layer_Security) und SRTP im Standart vorgeschrieben 🤗
* [**Peer-to-Peer**](https://de.wikipedia.org/wiki/Peer-to-Peer)
  * [NAT traversal](https://de.wikipedia.org/wiki/Netzwerkadress%C3%BCbersetzung#NAT-Traversal) mittels [ICE](https://de.wikipedia.org/wiki/Interactive_Connectivity_Establishment)/[STUN](https://de.wikipedia.org/wiki/Session_Traversal_Utilities_for_NAT)/[TURN](https://de.wikipedia.org/w/index.php?title=TURN&action=edit&redlink=1)


## [QoS](https://de.wikipedia.org/wiki/Quality_of_Service)
**Q**uality **o**f **S**ervice

=> Dienstgüte

> **📝💬❗** FiSi AP2 Analyse Sommer 2022 Aufgabe 4e

Herausforderung: 
* Nur in Netzsegmenten möglich, die man selber kontrolliert (nicht im Internet)
* [Netzneutralität](https://de.wikipedia.org/wiki/Netzneutralit%C3%A4t)

### [ToS](https://de.wikipedia.org/wiki/IP-Paket#TOS_(Type_of_Service))
**T**ype **o**f **S**ervice

=> 8-bit Feld im IP-Header, die unterschiedlich interpretiert werden

### [IEEE 802.1p](https://de.wikipedia.org/wiki/IEEE_802.1p)

=> Priorisierung von Datenpaketen nach [Priorisierungslevel](https://de.wikipedia.org/wiki/IEEE_802.1p#Priorisierungslevel)

### [RTCP](https://de.wikipedia.org/wiki/RealTime_Control_Protocol)
**R**eal**T**ime **C**ontrol **P**rotocol

=> kann mit RTP eingesetzt werden, um QoS-Parameter auszuhandeln

## Fax nach Umstellung auf VoIP ([FoIP](https://de.wikipedia.org/wiki/IP-Telefonie#Fax_%C3%BCber_IP_(Fax_over_IP,_FoIP)))

> **📝💬❗** FiSi AP2 Analyse Sommer 2022 Aufgabe 4f
