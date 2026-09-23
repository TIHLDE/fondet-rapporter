# Changelog

Changes to the templates in `templates/` and the shared library in `lib/`.
Reports built on the library always use the current version of it.

## 2026-09-23

- Templates are a folder of shapes per document: `templates/<year>/quarterly/<shape>`
  and `templates/<year>/annual/<shape>`, each named after what it is modelled on
- Ten shapes: quarterly as `classic`, `skagen`, `verdi`, `onepage`, `board` and
  `slides`; annual as `classic`, `nbim`, `uc` and `ucits`
- `lib/slides.typ` for the 16:9 deck, built on the same colours and fonts, no
  external package
- `make new` takes `SHAPE`
- `report()` takes `contents`, `numbered` and `cover-page`, which is what
  separates the long shapes from the short ones
- Quarterly and annual reports get an analysis chapter: attribution,
  risk-adjusted return and currency effect
- Compiled PDFs moved next to the source they were built from, templates
  included
- `docs/writing-reports.md` on what belongs in each report, with the formulas
- CI builds every report and template on each pull request
- `make check` fails while a report still says TODO; `make bundle` copies a
  report and its imports for upload to the Typst web app
- Reports and templates are ordered by year: `reports/<year>/<period>` and
  `templates/<year>/<kind>`
- `templates/2025` holds the generation the Q4 2025 report was written with

## templates/v1

First version built on a shared library, replacing the copy-per-project setup
in the Typst web app.

- One library for the cover page, header and footer, tables, funds and glossary
- Automatic heading numbers, so sections no longer have to be renumbered by hand
- Fund figures live in `funds.typ` with required fields; a missing figure fails
  the build
- `weight` is a number and drives both the fund heading and the portfolio weight
  chart
- Norwegian number formatting in `lib/format.typ`
- Fixed: fund names ran into the previous paragraph, and the header logo was
  clipped by the page margin
