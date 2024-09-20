# Planen der Konfiguration

## Beschreibe dein/euer Projekt (selbstdefinierte Aufgabenstellung).

*mindestens 5 Sätze*

## Was sind eure Ziele (persönliche Motivation)?

*mindestens 5, besser 10 Stichpunkte*

## Welche Dienste sollen als Teil des Projektes integriert werden?

* Backup
* Monitoring
* …

## Erstellt eine grobe Übersicht, wie die Architektur des Projekes aussehen sollen.

*Auf welcher Plattform soll euer Projekt laufen?*
*Welche Hardware wird benötigt?*
*Welches Betriebsystem werdet ihr nutzen?*

*Sollen einzelne Dienste virtualisiert werden?*
*Falls ja, mit welchen Technologien?*

## Überlege für jeden Dienst, mit welcher Software er betrieben werden soll. Beschreibe die Eigenschaften der Software anhand geeigneter Kriterien. Vergleicht sie mit alternativen Lösungen.

*Der Vergleich darf tabellarisch erfolgen (siehe folgende Beispieltabellen).*

*Pro Dienst sollen je mindestens zwei Lösungen verglichen werden.*

*Belegt relevante Aussagen zu Kriterien mit Quellen.*

### Backup

|                           | Restic [0]                                   | Duplicity [1] | BorgBackup [2] | …          |
|---------------------------|----------------------------------------------|---------------|----------------|------------|
| Mögliche Backupstrategien |                                              |               |                |            |
| * Vollbackup              | ja/nein                                      | ja/nein       | ja/nein        | ja/nein    |
| * Inkrementell            | ja/nein                                      | ja/nein       | ja/nein        | ja/nein    |
| * Differenziell           | ja/nein                                      | ja/nein       | ja/nein        | ja/nein    |
| Mögliche Sicherungsziele  | local, sftp, rest, s3, …                     | …             | …              | …          |
| Verschlüsselung           | ja, symmetisch, mit AES-256 und scrypt [3,4] | ja/nein       | ja/nein        | ja/nein    |
| Prüfsummen + Signaturen   | ja, mit message authentication code [4]      | ja/nein       | ja/nein        | ja/nein    |
| Softwarelizenz            | BSD 2                                        | GPL          | BSD             | …          |
| Anschaffungskosten        | 0€                                           | 0€           | 0€              | …          |
| …                         | …                                            | …            | …               | …          |

#### Quellenangaben

* [0] https://restic.net
* [1] https://duplicity.gitlab.io
* [2] https://www.borgbackup.org
* [3] https://restic.readthedocs.io/en/stable/070_encryption.html
* [4] https://restic.readthedocs.io/en/v0.4.0/Design/

### Monitoring

|                                    | Grafana [0] + Prometheus [1]        | Icinga [2] | Nagios [3] | … |
|------------------------------------|-------------------------------------|------------|------------|---|
| Nötige Komponenten                 |                                     |            |            |   |
| * Check-Plugins / Exporter         | Prometheus-Exporter [4]             |            |            |   |
| * Datenbank                        | Prometheus time series database [5] |            |            |   |
| * Dashboard                        | Grafana Dashboard [6]               |            |            |   |
| * Notifications                    | Grafana Alertmanager (builtin) [7]  |            |            |   |
| Wie/Wo werden Checks ausgeführt?   | von Prometheus-Exportern [4]        |            |            |   |
| Welche Komponente triggert Checks? | Prometheus-Exporter [4]             |            |            |   |
| Wo werden Daten gespeichert?       | Prometheus time series database [5] |            |            |   |
| Wo/Wann werden Daten ausgewertet?  | im Grafana Dashboard [6]            |            |            |   |
| Softwarelizenz                     | Apache License v2.0 & AGPLv3 [8,9]  |            |            |   |
| Anschaffungskosten                 | 0€                                  |            |            |   |

#### Quellenangaben

* [0] https://grafana.com
* [1] https://prometheus.io
* [2] https://icinga.com
* [3] https://www.nagios.org
* [4] https://prometheus.io/docs/instrumenting/exporters
* [5] https://prometheus.io/docs/prometheus/latest/storage
* [6] https://grafana.com/grafana
* [7] https://grafana.com/docs/grafana/latest/alerting/fundamentals/notification-policies
* [8] https://grafana.com/licensing/
* [9] https://prometheus.io/docs/introduction/faq/#what-license-is-prometheus-released-under

Beispielkonfiguration: https://github.com/T-i-M-M-i/deployment/tree/master/modules/monitoring

## Welche Recovery Time Objective (RTO) und Recovery Point Objective (RPO) wollt ihr erreichen? Wählt eine Backupstrategie und begründet die Entscheidung.

## Welche Systemeigenschaften sollen vom Monitoring überwacht werden? Beschreibe die Architektur des gewählten Monitoring-Setups (am besten mit einer Grafik).

## Habt ihr bereits Gedanken, wie eine spätere Automatisierung umgesetzt werden kann?

## Plant einen groben Zeitplan für die Umsetzung.

*Gebt Meilensteine an.*

## Wer aus dem Team wird welche Aufgaben übernehmen?

## Welche Anleitungen (bzw. Tutorials) wollt ihr nutzen? Welche sonstige Dokumentation könnte nützlich sein?
