# AGENTS.md

German-language teaching notes (Lernfeld 10b) built with **mdBook**. There is no test suite, no
linter and no formatter — verification means "clean build + look at the rendered page".

## Build & verify

```bash
nix develop .#ci --command echo built   # CI path: runs mdbook-mermaid install && mdbook build
nix develop .# --command true           # same but mdbook serve --port 3333 --open
```

Both devShells run their work in a `shellHook` that ends with `exit`, so you **must** pass
`--command <something>` or the shell dies before you can type. The build's stdout is visible
either way. `mdbook-mermaid install` regenerates `mermaid.min.js` and `mermaid-init.js` in the
repo root on every build.

CI (`.github/workflows/deploy.yml`) runs exactly `nix develop .#ci --command echo shellHook` then
`nix flake check`, and publishes `book/` to GitHub Pages. The flake defines no `checks`, so the
build inside the shellHook *is* the test.

## Generated files: never edit

`.gitignore` = `book`, `mermaid*.js`, `index.html`, `*.swp`. So `mermaid-init.js` and
`mermaid.min.js` are **untracked plugin output** — edits there are destroyed by the next build and
invisible to everyone else. Configure Mermaid from tracked `src/**/*.md` instead.

## Repo conventions

- **Never stage or commit anything, including brand-new files.** Manual review is intended, so the
  index must stay exactly as you found it — leave edits unstaged/untracked and let a human decide.
  Don't `git add`, `git commit`, or `git stash`. Note `git diff` shows **only unstaged** changes —
  use `git diff HEAD` to see everything.
- `src/README.md` is a symlink to `../README.md` — edit the root file.
- Content is German; match existing terminology on neighbouring pages.
