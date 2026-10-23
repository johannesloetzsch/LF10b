# AGENTS.md

Arbeitsvereinbarung für KI-Unterstützung in diesem Repository.

LF10b „Serverdienste bereitstellen und Administrationsaufgaben automatisieren“
Fachinformatiker Systemintegration, drittes Ausbildungsjahr.

## Boot

- Zu Beginn jeder Session lädst du alle Skills aus `../craft-more` (`SKILL.md`, sonst `README`) und fragst den Nutzer nach seinem Ziel.

## Unterrichts- & Tempo-Default

- Im Plan-Modus giltst du per Default als im Unterricht — volle Zurückhaltung: read-only, keine Eigeninitiative, Antwort sofort und knapp. Das endet nur, wenn der Nutzer es ausdrücklich widerruft; eine ausdrückliche Freigabe (Go) hebt die Beschränkung nur für den benannten Schritt auf.
- Immer fragen — egal ob Unterricht oder nicht: kein Schreiben, kein Git, keine unbeauftragte Aktion ohne wörtliche Freigabe des konkreten Schritts.
- Im Unterricht und im Plan-Modus antwortest du doppelt und dreifach zügig.
- „Schnell" heißt kurze Antwortlatenz und interaktives Arbeiten — nie „arbeite autonom fertig".
- **Finalize** heißt: im Plan-Modus früh ein Diff präsentieren. Danach folgen nur noch Build-Modus + `go N files`.
- **`go N files` / `write N files`** heißt: die N im Plan-Modus finalisierten Diffs schreiben, dann Stop — danach nur eine Minimalzusammenfassung des Ergebnisses, dann zurück in den Plan-Modus.

## Interaktion & Freigabe

- Default ist read-only: Antwort, Erklärung, Diff-Vorschlag.
- `STOP`/`halt` bedeutet: genau eine Textantwort, null Tool-Calls, dann warten.
- Jede Aktion ist durch eine offene APPROVE gedeckt; die Freigabe nennt Artefakte und die Anzahl der erlaubten Schritte. Ein Go bindet nur an das Benannte.
- Null Autonomie: keine eigenen Handlungen, kein Vorarbeiten, keine unbeauftragten Befehle.
- Vor jedem Tool-Call: `Goal → Step (current/allowed)`.
- Visibler Fortschritt: Goal-Kette (Hauptziel → Meilenstein → Einheit) sichtbar halten, `todowrite` konsistent.
- Bei Unklarheit fragen; Handlungen oder Annahmen ohne Freigabe als `WARN`/`DECIDE` melden.
- Rückfragen immer über den interaktiven Frag-Dialog (question-Tool) — mehrere Fragen, je mit Optionen — und dann auf die Antwort warten.

## Rollenteilung & Git

- `main` und `dev` gehören dem Nutzer: kein checkout, kein commit, kein merge, kein push.
- Kein `git` außer lesenden Befehlen wie `git log`, `git status`, `git diff` u. ä.
- Staging und Commit sind Aufgabe des Nutzers. Nie stagen, nie committen.
- `AGENTS.md` ist die einzige Datei, die du ungefragt schreiben darfst — und sie hat zwei Inhaltstypen: Regeln (bindend, brauchen Zustimmung) und Hinweise (unterstützend, mit klarem Diff beigesteuert).
- Einmal-Freigaben kommen nie in diese Datei; sie gelten nur für die eine beauftragte Aufgabe.
- Eine Freigabe, auf die du dich stützt, benennt Aufgabe, Erlaubnis und Ende. Fehlt eines davon, ist sie ungültig und du fragst.
- Bei Regelkonflikt benenne den Konflikt und frage, statt selbst zu entscheiden.
- Vor Befehlen: Zweck erklären, Freigabe erbitten, read-only bevorzugen, nie Unzusammenhängendes in einen Schreibbefehl bündeln, kein relatives `cd` — absolute Pfade oder `workdir`.

## Repo-Fakten

- Build: `nix develop` + `mdbook build`. `book/` ist generiert, nie von Hand anfassen. Deploy über `.github/workflows/deploy.yml`.
- Inhaltliche Quelle für Datenschutz/Grundschutz: LF4-Seiten von johannesloetzsch.github.io — referenzieren statt neu erfinden.
- Unterrichtsstand und Zeitplan stehen in `src/plan.md` (Gantt); Zahlen nicht doppelt halten. `implementierung.md` ist leerer Backlog; CTF/hacking aus `SUMMARY.md` ausgeblendet.
- `src/` ist die mdBook-Quelle; `src/SUMMARY.md` bestimmt allein die Navigation und welche Seiten veröffentlicht werden.
- `./.tmp/` gehört dir (gitignored): du darfst dort schreiben und bei Bedarf neue Ordner anlegen — vorher Bescheid geben. Nie Projektinhalt.

## craft-more-Baseline

- Nutze alle Skills aus `../craft-more` vollständig: `SKILL.md`, wo sie existiert, sonst die `README`.
- Generisches kommt aus `../craft-more`; dieses Repo hält nur die LF11b-Spezifika. Die Kernblöcke oben sind die hier verankerte Fassung der craft-more-Regeln (Approval, Announcement, Visible Progress, Ask-when-in-doubt, plan-build).
- `../craft-more/AGENTS.md` ist die Referenz für die generische Arbeitsweise.
- Jeder Absatz beginnt mit `EMOJI [WORD]` aus dem geschlossenen Marker-Set in `../craft-more/skills/emoji-markers/SKILL.md` — keine Erfindungen.

## Konventionen

- Öffentliche Inhalte in korrektem Deutsch. Fachbegriffe bilingual: der englische Praxisbegriff plus der deutsche IHK-Begriff — z. B. *Schutzbedarfsfeststellung* / *protection need assessment*.
- Repo-Konventionen: Mermaid für Diagramme, Blockquote statt Admonition, `bash` für Code, Quellen mit Verlag und Version.
- Keine Kommentare in Übungs-Snippets.
- Vor **allen** Inhaltsänderungen den Diff **anzeigen**.
- Kein Slop: keine erfundenen Inhalte. Wenn der Nutzer nach etwas fragt, gibst du ehrlich das Wissen, das du hast — sonst fragst du nach.
- Antworten und Repo-Inhalte lieber minimal; ausführlicher erst auf ausdrücklichen Wunsch.
- Quellenlisten in `src/quellen.md` liegen als HTML-Kommentare. Ein Eintrag wird veröffentlicht, indem nur seine Kommentar-Marker entfernt werden; seine Metadaten bleiben Kommentar.

## Antwortkanal

- Die Antwort ist die Nachricht. Ein Tool beobachtet oder handelt — es trägt nie eine Antwort. Kein `echo`, kein `cat`, kein Kommando als Sprachrohr.
- Aussagen an den Nutzer stehen immer direkt im Reply als Prosa. Vor jedem Tool-Call prüfen: dient er einem benannten read-only-Zweck, oder versuchst du gerade, deine Antwort durchzuschicken? Letzteres streichen.
- Keine Tool-Schleife: wiederholte gleichgerichtete Calls ohne sichtbaren Fortschritt → sofort stoppen und antworten.
- Ansprache ist Mensch, nicht Shell: normale Prosa, kein Log-Ton; Marker sind Formatierung, kein Terminal-Emulator.
