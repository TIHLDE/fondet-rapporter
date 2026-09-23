# Working on the reports

Two ways to edit: locally with the Typst CLI, or in the Typst web app. Both end
in the same place, a branch and a pull request in this repository.

## Locally

```sh
make new YEAR=2026 PERIOD=q1        # copy a template into reports/2026/q1
make watch DIR=reports/2026/q1      # rebuild on every save
make check                          # build everything, fail on leftover TODO
```

`make` writes the PDF next to the source, `report.pdf` for a report and
`preview.pdf` for a template. Commit the PDF together with the text it was
built from, so the two never drift apart.

## In the Typst web app

The web app can be linked to this repository and pull and push both ways. Setting
the link up needs Typst Pro on the account that does it; after that anyone with
write access to the project can push and pull
([Git Sync](https://typst.app/docs/web-app/git-sync/)). Pull before you start
writing, push when you are done, and open the pull request from here.

Without Pro, move the files by hand:

```sh
make bundle DIR=reports/2026/q1
```

That copies the report, `lib/` and `assets/` into `out/bundle-q1/`. Upload those
files to a Typst project with `main.typ` at the top, write there, then copy the
changed files back into `reports/2026/q1/` and rebuild. The absolute imports
(`/lib/doc.typ`) resolve against the project root in the app the same way they
do against the repository root locally, which is why the bundle works unchanged.

## Branches and pull requests

One branch per report or change, named for it: `report/2026-q1`, `fix/header-logo`.
Open a pull request, let the build finish, then merge. `master` is the version
that has been reviewed.

CI compiles every report and template on each pull request. It uses the fonts on
the runner, not Roboto, so treat its PDFs as a compile check rather than as the
final document.

## Conventions

- Code, file names and comments in English. The printed text is Norwegian.
- Figures come from a source with a date. If a number cannot be sourced, leave
  the field out rather than guessing.
- A fund is added in `funds.typ`, never by writing a table by hand.
- Before asking for review, read the checklist at the end of
  [docs/writing-reports.md](docs/writing-reports.md).
