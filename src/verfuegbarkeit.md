# Verfügbarkeit == Ausfallsicherheit

```mermaid
flowchart TB
  Verfügbarkeit --> Redundanz
  Redundanz --> Hardware
  Hardware --> Cluster
  Hardware --> USV
  Redundanz --> Netzwerk --> Topologie
  Redundanz --> Services
  Services --> Architektur
  Services --> Deployments --> GreenBlue
  Redundanz --> Daten
  Daten --> DistributedDB
  Daten --> Raid
  Daten --> Backups
  Verfügbarkeit --> OrganisatorischeMaßnahmen
  OrganisatorischeMaßnahmen --> Monitoring
  OrganisatorischeMaßnahmen --> Wiederanlaufkonzepte
  OrganisatorischeMaßnahmen --> Automatisierung
  Automatisierung --> Skallierbarkeit+Wirtschaftlichkeit
  Skallierbarkeit+Wirtschaftlichkeit
  Automatisierung --> Wiederanlauf
  Automatisierung --> ChangeManagement
  Automatisierung --> Rollback
```

## Redundanz

### RAID

> Welche **RAID-Level** kennt ihr?

- RAID0 (striping)
- RAID1 (mirroring)
- RAID5 (single parity)
- RAID6 (double parity)

> „Prüfungsvorbereitung Fachinformatiker Systemintegration“ 2.6.4. (Seite 66)

> mehr Informationen zu RAID gibt es auch unter: https://www.thomas-krenn.com/de/wikiDE/index.php?title=RAID

### Redundanz in Netzwerken

#### Redundanz von Services

```mermaid
flowchart TB
  Redundanz --> LoadBalancing
  LoadBalancing --> Anycast+ColdSpare
  Redundanz --> ms[Master/Slave]
  ms --> HotSpare+Heartbeat
```

z.B.
* DNS
* DHCP
* Datenbanken
* Webserver
* Router

#### Redundante Router: first hop redundancy protocols

> „Prüfungsvorbereitung Fachinformatiker Systemintegration“ 2.8.10. (Seite 104)

```mermaid
flowchart TB
  RedundanteRouter --> IETF --> VRRP
  RedundanteRouter --> Cisco
  Cisco --> GLBR
  Cisco --> HSRP
```

* verwenden Nachrichten um Status der Router auszutauschen
* verwenden virtuele MAC-Adresse
* verwenden virtuelle IP-Adresse

* erlauben LoadBalancing zwischen Routern (außer HSRP)

### USV

> 2023 Sommer SI Konzeption — Aufgabe 2

> „Prüfungsvorbereitung Fachinformatiker Systemintegration“ 2.5.7. (Seite 71)

#### [Klassifizierung](https://de.wikipedia.org/wiki/Unterbrechungsfreie_Stromversorgung#Klassifizierung)

```mermaid
flowchart TB
  USV --> Offline -..-> VFD
  USV --> Netzinteraktiv -..-> VI
  USV --> Online -..-> VFI
```

![VFI](https://upload.wikimedia.org/wikipedia/commons/3/3b/UPS_VFD_-_Offline_UPS_%28German%29.svg)
![VI](https://upload.wikimedia.org/wikipedia/commons/0/08/VI_UPS_-_Line_Interactive_UPS_%28German%29.svg)
![VFI](https://upload.wikimedia.org/wikipedia/commons/8/83/VFI_UPS_-_Online_UPS_%28German%29.svg)
