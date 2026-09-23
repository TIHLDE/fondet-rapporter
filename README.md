# Fondet report templates

Typst templates for the quarterly and annual reports written by
Forvaltningsgruppen in TIHLDE. One shared library, everything else ordered by
year. The code is English, the printed text is Norwegian.

## Layout

```
lib/          shared modules: theme, tables, charts, funds, cover page, glossary
templates/    templates by year: 2026/quarterly, 2026/annual, 2025/quarterly
reports/      reports by year: 2025/q3, 2025/q4, 2026/q2-draft
pdf/          compiled reports, tracked so a PDF is one click away
assets/       logos
```

A report built on the library is two files: `main.typ` with the text and
`funds.typ` with the per-fund figures. Imports use root paths (`/lib/doc.typ`),
so a report folder can be moved or copied without fixing imports.

`templates/2026` is the current generation. `templates/2025` is the one used for
the Q4 2025 report, kept so an old report can be rebuilt the way it was written.
`reports/2025/q3` predates the library and is self-contained. `reports/2026/q2-draft`
is an unpublished design with donut, bar and line charts; it needs the cetz
package and therefore network access, so `make` skips it.

## Build

Needs [Typst](https://github.com/typst/typst) 0.13 or newer. Nothing is
downloaded for the current templates; everything they use lives in `lib/`.

```sh
make                          # build every report into pdf/
make pdf/2025/q4.pdf          # build one
make watch YEAR=2025 PERIOD=q4
```

Without `make`:

```sh
typst compile --root . reports/2025/q4/main.typ pdf/2025/q4.pdf
```

The compiled PDFs are committed. Rebuild and commit them together with the
source so the PDF in the repository always matches the text.

## New report

```sh
make new YEAR=2026 PERIOD=q1                    # quarterly
make new YEAR=2026 PERIOD=annual KIND=annual    # annual
make new YEAR=2026 PERIOD=q1 TEMPLATE=2025      # older template generation
```

That copies the template into `reports/<year>/<period>/`. Fill in the fields
marked `TODO`, set the title and year at the top of `main.typ`, and put the
funds in `funds.typ`.

## Funds

A fund is built with `fund(...)` in `funds.typ`. Every field is required: a
missing figure stops the build with an error instead of printing an empty cell.
`weight` is a number rather than a string, so the same value drives both the
heading and the weight chart.

## Versioning

Git is the history. Templates are frozen per year, so last year's report can be
rebuilt with last year's template, while reports on the current library pick up
a layout fix at once. Changes are listed in `CHANGELOG.md`.

Published PDFs for the website are not stored here; they live with the site in
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
