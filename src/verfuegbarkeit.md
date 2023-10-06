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

### Redundanz in Netzwerken

#### Redundanz von Services

```mermaid
flowchart TB
  Redundanz --> LoadBalancing
  LoadBalancing --> Multicast+ColdSpare
  Redundanz --> ms[Master/Slave]
  ms --> HotSpare+Heartbeat
```

z.B.
* DNS
* DHCP
* Datenbanken
* Webserver
* Router

> „Prüfungsvorbereitung Fachinformatiker Systemintegration“ 2.8.10. (Seite 104)

#### Redundante Router: first hop redundancy protocols

```mermaid
flowchart TB
  ReduntanteRouter --> IETF --> VRRP
  ReduntanteRouter --> Cisco
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

```mermaid
flowchart TB
  USV --> Offline -..-> VFD
  USV --> Netzinteraktiv -..-> VI
  USV --> Online -..-> VFI
```
