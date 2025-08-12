# [NTP](https://de.wikipedia.org/wiki/Network_Time_Protocol)
**N**etwork **T**ime **P**rotocol

*RFC 5905*

## Hierarchie nach „Stratum“

![](https://upload.wikimedia.org/wikipedia/commons/c/c9/Network_Time_Protocol_servers_and_clients.svg)

### [Funktionsweise und Genauigkeit](https://de.wikipedia.org/wiki/Network_Time_Protocol#Fehler,_Algorithmus_und_Genauigkeit)
=> NTP überträgt die „genaue“ Zeit eines Zeitservers

=> [Latenz](https://de.wikipedia.org/wiki/Verz%C3%B6gerung_(Telekommunikation)) wird gemessen

=> [Jitter](https://de.wikipedia.org/wiki/Jitter) wird herausgemittelt


## [UTC](https://de.wikipedia.org/wiki/Koordinierte_Weltzeit), [Unix-Timestamp](https://de.wikipedia.org/wiki/Unixzeit), Zeitformate

| Bit    | Era / Epoch                   | Seconds (Era Offset) | Fraction | Überlauf |
| ------ | ----------------------------- | -------------------- | -------- | -------- |
| 32bit  | 1.1.1970                      | 32bit signed         | -        | [2038](https://de.wikipedia.org/wiki/Unixzeit#Jahr-2038-Problem) |
| 64bit  | 1.1.1900                      | 32bit unsigned       | 32bit    | 2036     | 
| 128bit | 1.1.1900 Era 0 / 32bit signed | 32bit unsigned       | 64bit    | …        |

> **💻** Beispiel: [systemd-timesyncd](https://wiki.archlinux.org/title/Systemd-timesyncd)
>```sh
> timedatectl
> timedatectl show-timesync --all
>```

## Sicherheit
> **💬** Welche Zusicherungen macht NTP bezüglich der Schutzziele
> * Integrität
> * Verfügbarkeit
>
> **💬** In welchen Fällen ist eine korrekte Systemzeit sicherheitsrelevant?

### Maßnahmen
* [NTPsec](https://de.wikipedia.org/wiki/Network_Time_Protocol#NTPsec)
* [tlsdate](https://de.wikipedia.org/wiki/Network_Time_Protocol#tlsdate)
