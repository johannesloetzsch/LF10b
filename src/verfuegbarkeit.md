# Verfügbarkeit == Ausfallsicherheit

<!-- toc -->

```mermaid
flowchart TB
  Verfügbarkeit --> Redundanz
  Redundanz --> Hardware
  Hardware --> Cluster
  Hardware --> USV
  Redundanz --> Netzwerk --> Topologie
  Netzwerk --> LinkAggregation
  Netzwerk --> FHRP
  Redundanz --> Services
  Services --> Architektur
  Services --> Deployments --> Staging
  Deployments --> BlueGreen
  Redundanz --> Daten
  Daten --> DistributedDB
  Daten --> Raid
  Daten --> Backups
  Verfügbarkeit --> OrganisatorischeMaßnahmen
  OrganisatorischeMaßnahmen --> Monitoring
  OrganisatorischeMaßnahmen --> Wiederanlaufkonzepte
  OrganisatorischeMaßnahmen --> Automatisierung
  Automatisierung --> Skalierbarkeit+Wirtschaftlichkeit
  Skalierbarkeit+Wirtschaftlichkeit
  Automatisierung --> Wiederanlauf
  Automatisierung --> ChangeManagement
  Automatisierung --> Rollback
```

## => Redundanz

### [USV](./usv.md)

### [RAID](./raid.md)

### [Netzwerk](./netzwerk.md)
#### [Link Aggregation](https://de.wikipedia.org/wiki/Link_Aggregation)
#### [**F**irst **H**op **R**edundancy **P**rotocols (FHRP)](https://en.wikipedia.org/wiki/First-hop_redundancy_protocol)

### Redundanz von Services

> **💬❗** Welche Maßnahmen zur Erhöhung der Verfügbarkeit kennen Sie?
>
> Welchen Beitrag können diese Maßnahmen zur Skalierbarkeit leisten?


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



### Deployments

#### [Staging-Umgebung](https://de.wikipedia.org/wiki/Bereitstellungsumgebung)

> **💬❗** Welche [Bereitstellungsumgebungen](https://de.wikipedia.org/wiki/Bereitstellungsumgebung) kennen Sie?

#### [Blue Green Deployments](https://en.wikipedia.org/wiki/Blue%E2%80%93green_deployment)

> **❓❗** Was versteht man unter einem [Blue Green Deployment](https://en.wikipedia.org/wiki/Blue%E2%80%93green_deployment)?


## TOM

> **💬❗** Welche Technischen und **Organisatorischen** Maßnahmen sind erforderlich um Verfügbarkeit für ein System zu gewährleisten?
