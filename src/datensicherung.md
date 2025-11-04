# Datensicherung

<!-- toc -->

## Ziele / Einordnung

> **💬** Für welche **Ereignisse** ([elementare Gefährdungen](https://www.bsi.bund.de/SharedDocs/Downloads/DE/BSI/Grundschutz/IT-GS-Kompendium/IT_Grundschutz_Kompendium_Edition2023.pdf?__blob=publicationFile&v=4#download=1)) werden Backups benötigt?

> **❓❗** Was verstehen wir unter [**MTBF**](https://de.wikipedia.org/wiki/Mean_Time_Between_Failures "Mean Time Between Failures => Betriebsdauer") und [**MTTF**](https://de.wikipedia.org/w/index.php?title=Mean_Time_To_Failure "Mean Time To Failure => Lebensdauer")?

> **💬❗** Ersetzen **RAID**-Lösungen und **Snapshots** von Dateisystemen die Notwendigkeit von Backups?

> **❓❗** Was ist der Unterschied zwischen einem Backup und einem **Archiv**?


## Datensicherungskonzept / [Disaster Recovery](https://de.wikipedia.org/wiki/Disaster_Recovery)

### RTO
**R**ecovery **T**ime **O**bjective
### RPO
**R**ecovery **P**oint **O**bjective

![](https://upload.wikimedia.org/wikipedia/commons/6/69/RPO_RTO_example_converted.png)

>  **📝❗** FiSi AP2 Konzeption Sommer 2023 Aufgabe 4c


## Prinzipien / Ansätze

### [WORM](https://de.wikipedia.org/wiki/WORM)
**w**rite **o**nce **r**ead **m**any

=> Sicherstellen, dass Backups nicht vom zu sichernden System überschrieben werden können


### [3-2-1-Regel](https://de.wikipedia.org/wiki/Datensicherung#3-2-1_Backup-Regel)
* **3** Kopien der Daten (einschließlich Original) => 2 Backupkopien
* **2** verschiedene Medientypen
* **1** Offsite Kopie

> **💬** Warum sind **Off-site-Backups** wichtig?

![](https://upload.wikimedia.org/wikipedia/commons/a/a4/3-2-1_backup_01.png)


### [Generationenprinzip](https://de.wikipedia.org/wiki/Generationenprinzip)
(Großvater-Vater-Sohn-Prinzip)

=> mehrere Versionen/Generationen von Backups müssen existieren

z.B.
* tägliche Sicherung („Sohn“)
* wöchentliche Sicherung („Vater“)
* monatliche Sicherung („Großvater“)


## Backupstrategien

> **📝❗** FiSi AP2 Konzeption Sommer 2023 Aufgabe 4a

### **Vollbackups**
### **Differenzielle Backups**
=> Differenz zum letzten Vollbackup
### **Inkrementelle Backups**
=> Inkrement seit letztem (*Inkrementellen*) Backup


## [Archivbit](https://de.wikipedia.org/wiki/Archivbit)

> **[💬](# "Änderungs„Datum“, Hash, Archivbit")** Welche unterschiedlichen Möglichkeiten gibt es, mittels derer Backup-Tools entscheiden können, ob Dateien sich seit dem letzten Backup geändert haben?
>
> Welche Vor-/Nachteile haben diese Methoden?

Archivbit:
* Kennzeichnet neue und modifizierte Dateien. Wird bei Schreiboperationen gesetzt.
* Wird zurückgesetzt nach:
  * Vollbackups
  * Inkrementellen Backups
* Wird nicht zurückgesetzt nach:
  * Differenziellen Backups

> **📝❗** FiSi AP2 Konzeption Winter 2022 Aufgabe 3b


## Prüfungsaufgaben

> **📝❗** FiSi AP2 Konzeption Winter 2021 Aufgabe 2
>
> **📝❗** FiSi AP2 Konzeption Sommer 2022 Aufgabe 4d-e
>
> **📝❗** FiSi AP2 Konzeption Winter 2022 Aufgabe 3
>
> **📝❗** FiSi AP2 Konzeption Sommer 2023 Aufgabe 4

> **📝❗** FiSi AP2 Konzeption Winter 2023 Aufgabe 4a-b


## Lösungen / Tools

> **💬❗** Welche Backuplösungen kennen Sie?
>
> Welche Feature haben sie? (Wie) können die folgenden Anforderungen umgesetzt werden?
> * Generationenprinzip, effiziente Backupstrategien
> * 3-2-1-Regel
> * WORM, Authentifizierung der Clients am Backupserver
> * Verschlüsselung, Integritätsüberprüfung, Signaturen
> * Automatisierung, Monitoring

* [0] [Restic](https://restic.net)
* [1] [Duplicity](https://duplicity.gitlab.io)
* [2] [Borgbackup](https://www.borgbackup.org)
* [3] [xcopy](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/xcopy)
