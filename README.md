# Fondet report templates

Typst templates for the quarterly and annual reports written by
Forvaltningsgruppen in TIHLDE. One shared library, one folder per report. The
code is English, the printed text is Norwegian.

## Layout

```
lib/          shared modules: theme, tables, charts, funds, cover page, glossary
templates/    empty templates to copy: quarterly, annual
reports/      finished reports built on lib/, one folder per period
archive/      original sources from before the shared library, kept as written
assets/       logos
```

A report is two files: `main.typ` with the text and `funds.typ` with the
per-fund figures. Imports use root paths (`/lib/doc.typ`), so a report folder
can be moved or copied without fixing imports.

## Build

Needs [Typst](https://github.com/typst/typst) 0.13 or newer. No packages are
downloaded; everything the templates use lives in `lib/`.

```sh
make                          # build every report into out/
make out/2025-q4.pdf          # build one
make watch PERIOD=2025-q4     # rebuild on every save
```

Without `make`:

```sh
typst compile --root . reports/2025-q4/main.typ out/2025-q4.pdf
```

## New report

```sh
make new PERIOD=2026-q1              # quarterly
make new PERIOD=2026 KIND=annual     # annual
```

That copies the template into `reports/<period>/`. Fill in the fields marked
`TODO`, set the title and year at the top of `main.typ`, and put the funds in
`funds.typ`.

## Funds

A fund is built with `fund(...)` in `funds.typ`. Every field is required: a
missing figure stops the build with an error instead of printing an empty cell.
`weight` is a number rather than a string, so the same value drives both the
heading and the weight chart.

## Versioning

Git is the version history. Reports stay in `reports/` and keep rebuilding
against the current `lib/`, so a fix to the layout reaches every report at once.
Template changes are listed in `CHANGELOG.md` and tagged (`templates/v1`), so an
older template can be recovered with `git checkout templates/v1 -- templates/`.

`archive/` holds sources written before the shared library existed. They are
frozen: `make` ignores them, and they are kept for reference, not for editing.
Published PDFs are not stored here; they live with the website in
`fondet-nettside/public/reports/`.

## Typst web app

A Typst project can be linked to a Git repository and pull and push both ways.
Creating the link needs Typst Pro on the account that sets it up, but after that
anyone with write access to the project can push and pull
([Git Sync](https://typst.app/docs/web-app/git-sync/), marked experimental).
Without Pro the files have to be uploaded by hand.

The web app ships Roboto. Locally the templates fall back to Liberation Sans or
Noto Sans, so a PDF built on a laptop can differ slightly from one built in the
app.

## Overleaf

Overleaf compiles LaTeX only, not Typst. Mirroring these templates there means a
separate LaTeX version kept in sync by hand, which is two sources for one
report. This repository is the source, and the Typst web app is the editor.
