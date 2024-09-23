# Versionierung

## Backups

## Dateisystem-Snapshots

* ZFS
* btrfs

## SCM (**Source Code Management**)

### Zentral

* \*~
* `diff` + `patch`

* CVS (Concurrent Versions System)
* SVN (Subversion)

### Dezentral

* Bazaar
* Mercurial (hg)
* **Git**

## Wichtigste Operation

siehe [git-Subcommands](https://johannesloetzsch.github.io/linux-praktikum/versionskontrolle.html)

```bash
## Eine Kopie eines existierenden Repositories klonen und in das Verzeichnis wechseln
git clone https://github.com/johannesloetzsch/LF10b.git
cd LF10b/

## Eine Datei editieren, die Änderungen betrachten und rückgängig machen
nano src/versionierung.md 
git status
git diff
git restore src/versionierung.md

## Eine Datei editieren, die Änderungen betrachten…
nano src/versionierung.md 
git status
git diff
## Die geänderte Datei für den nächsten Commit einplanen
git add src/versionierung.md 
git status 
## Einen neuen Commit erstellen
git commit

## Die Commit-Historie anschauen
git log
```

```bash
## Ein neues Git-Repository anlegen und in das Verzeichnis wechseln
git init myproject
cd myproject/
```
