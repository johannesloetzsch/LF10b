# [RAID](https://de.wikipedia.org/wiki/RAID)

**r**edundant **a**rray of **i**ndependent **d**isks

**r**edundant **a**rray of **i**nexpensive **d**isks

> **📝❗** FiSi AP2 Konzeption Winter 2021 Aufgabe 3

> **📝❗** FiSi AP2 Konzeption Sommer 2022 Aufgabe 1

> **📝❗** FiSi AP2 Konzeption Winter 2023 Aufgabe 4c

> **📝❗** FiSi AP2 Konzeption Sommer 2024 Aufgabe 4

> **📝❗** FiSi AP2 Konzeption Winter 2024 Aufgabe 3


> **💬** Welche **RAID-Level** kennen Sie?

| RAID level                     | Disks  | Redundanz |
| ------------------------------ | ------ | --------- |
| **RAID0** (striping) / [JBOD](https://de.wikipedia.org/wiki/RAID#JBOD) | n >= 2 | 0         |
| **RAID1** (mirroring)          | n >= 2 | n-1       |
| **RAID5** (single parity)      | n >= 3 | 1         |
| **RAID6** (double parity)      | n >= 4 | 2         |
| RAID01 (mirroring of striping) | n >= 4 | n/2 (bei 2fachem mirroring) |
| RAID10 (spriping of mirroring) | n >= 4 | n/2 (bei 2fachem mirroring) |

> [**❓❗**](https://de.wikipedia.org/wiki/Redundanz_(Technik) "Redundanz") Wieviele Platten dürfen jeweils maximal ausfallen bevor Daten verloren gehen?

> [**❓❗**](https://de.wikipedia.org/wiki/Redundanz_(Technik) "Disks - Redundanz") Wieviele der Platten stehen als Nettokapazität zur Verfügung?

> **❓❗** Wie wirkt sicht die Redundanz bei den verschiedenen RAID-leveln auf die Lese- und Schreibgeschwindigkeit im Vergleich aus?

![](https://upload.wikimedia.org/wikipedia/commons/9/9b/RAID_0.svg)
![](https://upload.wikimedia.org/wikipedia/commons/b/b7/RAID_1.svg)
![](https://upload.wikimedia.org/wikipedia/commons/6/64/RAID_5.svg)
![](https://upload.wikimedia.org/wikipedia/commons/7/70/RAID_6.svg)

![](https://upload.wikimedia.org/wikipedia/commons/a/ad/RAID_01.svg)
![](https://upload.wikimedia.org/wikipedia/commons/b/bb/RAID_10.svg)

> „Prüfungsvorbereitung Fachinformatiker Systemintegration“ 2.6.4. (Seite 66)

> **💬** Welche Vor- und Nachteile haben Software-/Hardware-Raidcontroller?

> **💡** [Mehr Informationen zu RAID](https://www.thomas-krenn.com/de/wikiDE/index.php?title=RAID)
