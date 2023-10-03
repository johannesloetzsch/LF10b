# Verfügbarkeit

```mermaid
flowchart TB
  Verfügbarkeit --> Redundanz
  Redundanz --> Hardware
  Redundanz --> Services
  Hardware --> USV
  Redundanz --> Daten
  Daten --> Raid
  Daten --> Backups
  Verfügbarkeit --> Monitoring
  Verfügbarkeit --> Automatisierung
  Automatisierung --> Skallierbarkeit+Wirtschaftlichkeit
  Skallierbarkeit+Wirtschaftlichkeit
  Automatisierung --> Wiederanlauf
  Automatisierung --> ChangeManagement
  Automatisierung --> Rollback
```
