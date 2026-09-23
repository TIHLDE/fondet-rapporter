# Fondet report templates

[![build](https://github.com/TIHLDE/fondet-rapporter/actions/workflows/build.yml/badge.svg)](https://github.com/TIHLDE/fondet-rapporter/actions/workflows/build.yml)

Typst templates for the reports written by Forvaltningsgruppen in TIHLDE. One
shared library, everything else ordered by year. The code is English, the
printed text is Norwegian.

## Layout

```
lib/          shared modules: theme, tables, charts, funds, page setup, glossary
templates/    templates by year, each with a compiled preview.pdf
reports/      reports by year, each with a compiled report.pdf
docs/         how to write the reports, and the methods behind them
assets/       logos
```

## Templates

`templates/2026` is the current generation. Each folder holds the draft and a
compiled `preview.pdf`, so you can look before you copy.

| Template | For |
| --- | --- |
| `quarterly` | The full quarterly report, chapters and contents |
| `quarterly-status` | Two or three pages: facts, returns, comment, holdings |
| `quarterly-letter` | The quarter written as a letter to the members |
| `annual` | The year as a whole |
| `annual-endowment` | The year with governance, limits and an appendix |

They share the library and the fund data, so changing shape means changing which
`main.typ` you copied, not re-entering numbers.

[docs/writing-reports.md](docs/writing-reports.md) says what belongs in each of
them, and gives the formulas behind the analysis chapter.

A report built on the library is two files: `main.typ` with the text and
`funds.typ` with the per-fund figures. Imports use root paths (`/lib/doc.typ`),
so a report folder can be moved or copied without fixing imports.

`templates/2025` is the generation the Q4 2025 report was written with, kept so
an old report can be rebuilt the way it was written. `reports/2025/q3` predates
the library and is self-contained. `reports/2026/q2-draft` is an unpublished
design with donut, bar and line charts; it needs the cetz package and therefore
network access, so `make` skips it.

## Build

Needs [Typst](https://github.com/typst/typst) 0.13 or newer. Nothing is
downloaded for the current templates; everything they use lives in `lib/`.

```sh
make                                 # build every report and template
make reports/2025/q4/report.pdf      # build one
make watch DIR=reports/2025/q4       # rebuild on every save
make check                           # build everything, fail on leftover TODO
make bundle DIR=reports/2025/q4      # copy a report and its imports for upload
```

Without `make`:

```sh
typst compile --root . reports/2025/q4/main.typ reports/2025/q4/report.pdf
```

The PDF sits next to the source it was built from and is committed with it, so
the PDF in the repository always matches the text. CI builds every report and
template on each pull request.

## New report

```sh
make new YEAR=2026 PERIOD=q1                     # quarterly
make new YEAR=2026 PERIOD=annual KIND=annual     # annual
make new YEAR=2026 PERIOD=q1 TEMPLATE=2025       # older template generation
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

## Working together

[CONTRIBUTING.md](CONTRIBUTING.md) covers both ways of editing: locally with the
Typst CLI, and in the Typst web app through
[Git Sync](https://typst.app/docs/web-app/git-sync/) or a `make bundle` upload.

The web app ships Roboto. Locally, and on CI, the templates fall back to
Liberation Sans or Noto Sans, so a PDF built outside the app can differ
slightly.

## Overleaf

Overleaf compiles LaTeX only, not Typst. Mirroring these templates there means a
separate LaTeX version kept in sync by hand, which is two sources for one
report. This repository is the source, and the Typst web app is the editor.
