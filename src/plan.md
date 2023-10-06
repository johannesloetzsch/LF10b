# Plan

## Zeitplan

```mermaid
gantt
 title LF10b 2023
 dateFormat YYYY-MM-DD
 axisFormat %d.%m.
 section 8h Mo 9.10.
  Informieren                :informieren, 2023-10-09, 4h
  Auswahl                    :auswahl,after informieren, 4h
  HA Auswahl eines Projektes :milestone, after auswahl 
 section 8h Di 10.10.
  Planung                    :planung, 2023-10-10, 8h
 section 8h Do 12.10.
  Leistungskontrolle         :crit, milestone, 2023-10-12, 1h
  Implementierung Tag 1      :2023-10-12, 7h
 section 8h Fr 13.10.
  Implementierung Tag 2      :implementierung, 2023-10-13, 8h
  HA Wiederanlaufplan        :milestone, after implementierung
 section 8h Mo 13.11.
  Automatisierung            :2023-11-13, 8h
 section 5h Mi 15.11.
  Leistungskontrolle         :crit, milestone, 2023-11-15, 1h
  Reflektieren               :2023-11-15, 4h
```

## Leistungskontrollen
* Do 12.10. **doppelte Wertung**
  * [Verfügbarkeit](./verfuegbarkeit.md) (vollständig)
    * [Datensicherung](./datensicherung.md) (insbesondere SOL+Prüfungsaufgaben)
    * [Versionierung](./versionierung.md) [(einschließlich wichtigster Operationen)](https://johannesloetzsch.github.io/linux-praktikum/versionskontrolle.html)
    * [Monitoring (Ziele)](./monitoring.md)
* Mi 15.11.
  * Automatisierung
    * Administrierbarkeit
    * Skalierbarkeit
