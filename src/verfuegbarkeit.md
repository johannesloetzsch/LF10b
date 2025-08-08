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

### [USV](./usv.md)

### [RAID](./raid.md)

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
