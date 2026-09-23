# Changelog

Changes to the templates in `templates/` and the shared library in `lib/`.
Reports built on the library always use the current version of it.

## 2026-09-23

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
