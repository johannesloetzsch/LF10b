# Plan
80UE -> 2 doppelte + 3 einfache Noten


## Zeitplan

```mermaid
gantt
 title LF10b August 2025 (6 Tage)
 dateFormat YYYY-MM-DD
 axisFormat %d.%m.
 section Mo 11.8.
  Einführung & Planung          :2025-08-11, 1h
  Serverdienste                 :2025-08-11, 4h
 section Do 14.8.
  Serverdienste                 :2025-08-14, 5h
 section Fr 15.8.
  Plattformen, Auswahl          :2025-08-15, 4h
  SOL Lernen für Klassenarbeit  :crit, 2025-08-15, 2h
 section Mo 18.8.
  Q&A, Wiederholung (USV, RAID) :2025-08-18, 6h
 section Mi 20.8.
  Klassenarbeit                 :crit, milestone, 2025-08-20, 2h
  Verfügbarkeit (Monitoring)    :2025-08-20, 3h
 section Fr 22.8.
  Verfügbarkeit (Backup, Automatisierung) :2025-08-22, 4h
  SOL Wiederanlaufplan          :crit, milestone, 2025-08-22, 2h
```

```mermaid
gantt
 title LF10b September 2025 (5 Tage)
 dateFormat YYYY-MM-DD
 axisFormat %d.%m.
 section Mo 22.9.
  Wiederholung Verfügbarkeit    :2025-09-22, 6h
 section Di 23.9.
  Klassenarbeit                 :crit, milestone, 2025-09-23, 2h
  Vorstellung Projektpläne      :crit, 2025-09-23, 6h
 section Do 25.9.
  Praxis (Server aufsetzen)     :2025-09-25, 5h
 section Mo 29.9.
  Praxis (Monitoring)           :2025-09-29, 6h
 section Di 30.9.
  Praxis (Backup)               :2025-09-30, 8h
```

```mermaid
gantt
 title LF10b November 2025 (3 Tage)
 dateFormat YYYY-MM-DD
 axisFormat %d.%m.
 section Mo 17.11.
  Praxis (Automatisierung)      :2025-11-17, 5h
 section Di 18.11.
  Praxis (Testen, Optimieren)   :2025-11-18, 6h
 section Fr 21.11.
  Vorführung Wiederanlauf + Präsentation  :crit, 2025-11-21, 4h
  SOL Reflexion, Dokumentation  :2025-11-21, 2h
```


## Leistungsnachweise
* **Klassenarbeit Mi 20.8.2025** (doppelte Wertung, 90min, handschriftlich)
  * erlaubte Hilfsmittel: Fact sheet (1 A4-Blatt, einseitig beschrieben)
  * Inhalte
    * [Serverdienste](./serverdienste.md)
      * [DHCP](./dienste/dhcp.md)
      * [DNS](./dienste/dns.md)
      * [NTP](./dienste/ntp.md)
      * [LDAP](./dienste/ldap.md)
      * [Mail](./dienste/mail.md)
    * [Plattformen](./plattformen.md)
    *  *[Auswahl gemäß Kundenanforderungen](./auswahl.md)*
       * [Skalierbarkeit](./skalierbarkeit.md)
    * *([Verfügbarkeit](./verfuegbarkeit.md) ?)*
      * (*[RAID](./raid.md)*?)
      * (*[USV](./usv.md)*?)

* **Klassenarbeit Di 23.9.2025** (doppelte Wertung, 90min, handschriftlich)
  * erlaubte Hilfsmittel: Fact sheet (1 A4-Blatt, einseitig beschrieben)
  * Inhalte
    * [Verfügbarkeit](./verfuegbarkeit.md)
      * [RAID](./raid.md)
      * [USV](./usv.md)
      * [Datensicherung](./datensicherung.md)
      * [Monitoring](./monitoring.md)

* **Projektplan** (einfache Wertung)
  * Insbesondere Wiederanlaufplan (SOL vom Fr 22.8.)
  * Vortrag am **Di 23.9.**

* Projektpräsentation **Fr 21.11.2025**
  * **fachlicher Projekterfolg** (einfache Wertung)
    * Umsetzung der [zu optimierenden Ziele](./optimieren.md)
    * Demonstration Wiederanlauf, Einhaltung der RTO
  * **Mitarbeit** (einfache Wertung)
