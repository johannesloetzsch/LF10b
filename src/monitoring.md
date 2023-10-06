# Überwachung == Monitoring

## Ziele

* **Verfügbarkeit**, Wirtschaftlichkeit, Sicherheit, Skalierbarkeit, Administrierbarkeit
* Erkennung von Ereignissen **vor Schadenseintritt**
  * Mangel an Ressourcen
    * verbleibende freie Festplattenkapazität
  * „Health“ von Festplatten
    * SMART-Daten
  * Kostenkontrolle
    * API-Nutzung
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

* [MMonit](https://mmonit.com)
* [Nagios](https://www.nagios.org)
* [Icinga](https://icinga.com)
* [Grafana](https://grafana.com) + [Prometheus](https://prometheus.io) (+ [Loki](https://grafana.com/oss/loki))
