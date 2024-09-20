# Plan

## Zeitplan

```mermaid
gantt
 title LF10b September 2024
 dateFormat YYYY-MM-DD
 axisFormat %d.%m.
 section 8h Fr 20.9.
  Einführung & Planung          :2024-09-20, 1h
  [Theorie] Sicherheit, Einführung Verfügbarkeit (organisatorische Maßnahmen)  :2024-09-20, 1h
  [Theorie] Backup, Monitoring, Automatisierung   :2024-09-20, 4h
  SOL Auswahl & Vorbereitung Praxisprojekt :crit, milestone, 2024-09-20, 2h
 section 6h Mo 23.9.
  Fragezeit für Leistungskontrolle                   :2024-09-23, 1h
  [Theorie] Administrierbarkeit, Versionierung       :2024-09-23, 1h
  [Praxis] Git                  :2024-09-23, 1h
  [Praxis] Installation Grundsystem + Dokumentation  :2024-09-23, 3h
 section 6h Mi 25.9.
  [Praxis] Einrichtung Monitoring :2024-09-25, 6h
 section 3h Do 26.9.
  Leistungskontrolle Plattformen & Dienste  :crit, milestone, 2024-09-26, 2h
  [Praxis] Einrichtung Backup   :2024-09-26, 1h
 section 2h Fr 27.9.
  SOL Wiederanlaufplan          :crit, milestone, 2024-09-27, 2h
```

```mermaid
gantt
 title LF10b November 2024
 dateFormat YYYY-MM-DD
 axisFormat %d.%m.
 section 6h Mo 11.11.
  Wiederholung für Leistungskontrolle & Prüfungsaufgaben  :2024-11-11, 6h
 section 6h Mi 13.11.
  Leistungskontrolle            :crit, milestone, 2024-11-13, 2h
  [Praxis] Automatisierung      :2024-11-13, 4h
 section 3h Do 14.11.
  [Praxis] Erprobung Wiederanlaufplan  :2024-11-14, 3h
 section 8h Fr 15.11.
  Reflektion, Optimierung       :2024-11-15, 2h
  Projektpräsentation           :crit, 2024-11-15, 4h
```

## Leistungskontrolle
* Mi 13.11. **Klausur: doppelte Wertung, 90min, handschriftlich**
  * erlaubte Hilfsmittel
    * Notizen: 1 A4-Blatt, einseitig beschrieben
  * Inhalte
    * [Verfügbarkeit](./verfuegbarkeit.md)
      * [Datensicherung](./datensicherung.md)
      * [Monitoring](./monitoring.md)
    * [Versionierung (git)](./versionierung.md)
    * [Skalierbarkeit](./skalierbarkeit.md)
