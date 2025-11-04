# Administrierbarkeit

<!-- toc -->

## Snowflakeserver vs Konfigurationsmanagementsysteme

> **❓** Was wird unter einem Snowflakeserver verstanden?

```mermaid
flowchart TB
  Automatisierung --> Verfügbarkeit --> Administrierbarkeit
  Automatisierung --> Skalierbarkeit --> Administrierbarkeit
  Automatisierung --> Wirtschaftlichkeit --> Administrierbarkeit
  Automatisierung --> Sicherheit --> Administrierbarkeit
  Automatisierung --> Administrierbarkeit
  Versionskontrolle --> Administrierbarkeit
  Versionskontrolle --> ChangeRequestManagement --> Administrierbarkeit
  Versionskontrolle --> Rollback --> Administrierbarkeit
  Versionskontrolle --> Kooperation --> Administrierbarkeit
  Versionskontrolle --> CICD --> Administrierbarkeit
```

## [Automatisierung](./automatisierung.md)

### Setup, Updates, Wiederherstellung

> **💬❗** Welche Lösungen kennen Sie, um alle auf ihen Systemen installierte Software regelmäßig mit Sicherheitsupdates zu versorgen?

> **❓❗** Was muss bei der Installation berücksichtigt werden, um horizontale Skalierbarkeit wirtschaftlich gewährleisten zu können?

> **💬❗** Wie können Sie Automatisierungslösungen zur [Notfallwiederherstellung](https://de.wikipedia.org/wiki/Disaster_Recovery) einsetzen?


### Konfigurationsmanagement

> **❓❗** Welche Vorteile haben Konfigurationsmanagementsysteme?

> **❓❗** Wie unterscheiden sich imperative und deklarative Systemverwaltung?

> **💬** Welche [KM-Werkzeuge](https://de.wikipedia.org/wiki/Konfigurationsmanagement#Spezialisierte_KM-Werkzeuge_(z._B._f%C3%BCr_DevOps_oder_Cloud),_teils_Open-Source) kennen Sie?

## Vergleich verrschiedenen Automatierungslösungen

|                                                                              | Image                                           | Skripte                                             | Konfigurationsmanagementsysteme     | Docker                                                | NixOS                                | NixOS+Flake                  |
|------------------------------------------------------------------------------|-------------------------------------------------|-----------------------------------------------------|-------------------------------------|-------------------------------------------------------|--------------------------------------|------------------------------|
| Konfigurationsanpassung                                                      | Imperativ + neues Image erstellen               | Variablen/Skript anpassen + ausführen               | Playbook anpassen + ausführen       | Dockerfile anpassen + (re)build                       | configuration.nix anpassen + rebuild | flake.nix anpassen + rebuild |
| Wiederherstellung möglich                                                    | **ja**                                          | **ja**                                              | **ja**                              | **ja**                                                | **ja**                               | **ja**                       |
| Wiederherstellung+Updates                                                    | in separatem Schritt                            | **ja**                                              | **ja**                              | **ja** (Updateschritt oder Rebuild)                   | **ja** differenziell                 | **ja** differenziell         |
| Änderungen können per Versionskontrolle verwaltet werden -> Changemanagement | (nein)                                          | **ja**                                              | **ja**                              | **ja**                                                | **ja**                               | **ja**                       |
| Inkrementelle/Differenzielle Änderungen                                      | nein                                            | **ja**                                              | **ja**                              | **ja**                                                | **ja**                               | **ja**                       |
| Imperativ/Deklarativ                                                         | (Imperativ)                                     | Imperativ                                           | **(Deklarativ)**                    | **(Deklarativ)**(basiert auf Imperativen Anweisungen) | **Deklarativ**                       | **Deklarativ**               |
| Idempotente Änderungen                                                       | nein                                            | aufwändig/fehleranfällig                            | **(ja)** (aufwändig/fehleranfällig) | **ja**                                                | **ja**                               | **ja**                       |
| Kombinierbarkeit mehrerer Konfigurationen                                    | nein                                            | (ja, aber fehleranfällig)                           | **(ja)**                            | (ja, **Baum** von Konfigurationen)                    | **ja**                               | **ja**                       |
| sauberes Deinstallieren                                                      | nein (nur durch vollständige Wiederherstellung) | aufwändig/fehleranfällig                            | (fehleranfällig)                    | **ja**                                                | **ja**                               | **ja**                       |
| Reproduzierbarkeit                                                           | nur auf Stand vorhandener Images                | nein (sehr schwer+fehleranfällig zu implementieren) | (nein)                              | schwer Seiteneffekte zu vermeiden                     | (**ja**) wenn Inputs gelockt sind    | **ja**                       |

## [Mobile-Device-Management (MDM)](https://de.wikipedia.org/wiki/Mobile-Device-Management)

> **📝❗** FiSi AP2 Analyse Sommer 2025 Aufgabe 3
