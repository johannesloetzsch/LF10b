# USV
**U**nterbrechungsfreie **S**trom**v**ersorgung

<!-- toc -->

> 2023 Sommer SI Konzeption — Aufgabe 2

> „Prüfungsvorbereitung Fachinformatiker Systemintegration“ 2.5.7. (Seite 71)

## [Klassifizierung](https://de.wikipedia.org/wiki/Unterbrechungsfreie_Stromversorgung#Klassifizierung)

```mermaid
flowchart TB
  USV --> Offline -..-> VFD
  USV --> Netzinteraktiv -..-> VI
  USV --> Online -..-> VFI
```

### Offline-USV (VFD)
=> **V**oltage and **F**requency **D**ependent

![VFD](https://upload.wikimedia.org/wikipedia/commons/3/3b/UPS_VFD_-_Offline_UPS_%28German%29.svg)

### Netzinteraktive-USV (VI)
=> **V**oltage **I**ndependent (but frequency dependent)

![VI](https://upload.wikimedia.org/wikipedia/commons/0/08/VI_UPS_-_Line_Interactive_UPS_%28German%29.svg)

### Online-USV (VFI)
=> **V**oltage and **F**requency **I**ndependent

![VFI](https://upload.wikimedia.org/wikipedia/commons/8/83/VFI_UPS_-_Online_UPS_%28German%29.svg)

## Vergleich

|                           | Offline | Netzinteraktiv | Online |
| ------------------------- | ------- | -------------- | ------ |
|                           | VFD     | VI             | VFI    |
| Umschaltzeit              | ~10ms   | ~2-4ms         | 0ms    | 
| Eigenbedarf (Leerlauf)    | ~5W     | ~15W           | ~85W   |
| Wirkungsgrad (unter Last) | ~100%   |                | ~95%   |
| Kosten                    | min     |                | max    |
