# „Überwachung“ / Monitoring

## Ziele und Metriken

> **💬** Wofür wird Monitoring benötigt?
>
> Welche [Metriken](https://www.digitalocean.com/community/tutorials/an-introduction-to-metrics-monitoring-and-alerting) kennen Sie?

* **Verfügbarkeit**, Wirtschaftlichkeit, Sicherheit, Skalierbarkeit, Administrierbarkeit
* Erkennung von Ereignissen **vor Schadenseintritt**
  * Mangel an Ressourcen
    * verbleibende freie Festplattenkapazität
  * „Health“ von Festplatten
    * [**SMART**](https://de.wikipedia.org/wiki/Self-Monitoring,_Analysis_and_Reporting_Technology)-Daten
      * **S**elf-**M**onitoring, **A**nalysis and **R**eporting **T**echnology
  * Informationen von Netzwerkgeräten
    * [**SNMP**](https://de.wikipedia.org/wiki/Simple_Network_Management_Protocol)
      * **S**imple **N**etwork **M**anagement **P**rotocol
  * Kostenkontrolle
    * API-Nutzung
  * Ablauf von SSL-Zertifikaten
* Schnelle **Benachrichtigung** im Problemfall
  * Ausfall von Diensten
  * Ausfall von RAID-Platten
  * Swap-Nutzung
* Erkennung von **Tendenzen**
  * zunehmender Arbeitsspeicherverbrauch
    * Speicherleak
  * Netzwerklatenzen & Jitter
* Beobachtung, **Kontrolle** & Dokumentation von Angriffen
  * Verbindungsaufbau/Minute
  * Loginversuche/Minute
* **Optimierung** von Ressourcen
  * Langzeitauswertung
    * CPU-Auslastung (load)
  * Erkennung von **Mustern**
    * Auslastung nach Wochentag/Uhrzeit
* **Debugging**
  * Mit welchen Logdaten korrelieren unerwartete Metriken?

## Komponenten

### Check-Plugins / Exporters zur Erhebung der Metriken

* Konfiguration zu Überwachender Systemeigenschaften
* Geben Metriken meist numerisch (float/int) zurück
* Schwellwerte für
  * Warnungen
  * Kritische Zustände

z.B.
* [https://exchange.nagios.org/directory/Plugins](https://exchange.nagios.org/directory/Plugins)
* [https://prometheus.io/docs/instrumenting/exporters](https://prometheus.io/docs/instrumenting/exporters)

### Datenbank

* sinnvoller Weise **Round-Robin-Database**
  * Aggregation für nächst niedrigere Zeitauflösung

### Dashboard

* Übersicht + Analyse
* Konfiguration

### Notification

z.B. per Mail, SMS, IM, Chat, Pager, Desktop-/Push-Notification

## Architektur

### Datenerhebung

|                                   | Remote (Monitoringserver) | auf überwachtem „Client“ |
|-----------------------------------|---------------------------|--------------------------|
| Wo wird Check ausgeführt?         | für Netzwerkdienste       | für Ressourcenauslastung |
| Wer triggert Aufruf zur Erhebung? | (x)                       | (x)                      |
| Wo werden Daten gespeichert?      | (x)                       |                          |
| Wo/Wann werden Daten ausgewertet? | (x)                       |                          |

Wie werden Daten übermittelt?
* Pull/Push
* Intervall

## Rechtliche Fragen

* Datenerhebungsgrundlage + Speicherfristen
* Beweispflicht

### Empfehlung

* Datensparsamkeit + begrenzte Speicherdauer bei Logdaten
* aggregierte (anonyme) RRD-Metriken

## Lösungen

* [Nagios](https://www.nagios.org), [Icinga](https://icinga.com)
* [Grafana](https://grafana.com) + [Prometheus](https://prometheus.io) (+ [Loki](https://grafana.com/oss/loki))
* [CheckMK](https://checkmk.com/)
* [MMonit](https://mmonit.com)
* [Webmin](https://webmin.com/)
* [Zabbix](https://www.zabbix.com/)
