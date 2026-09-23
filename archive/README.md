# Archive

Report sources from before the shared library in `lib/`. Kept as they were
written, so the history of the layout is not lost. `make` does not build them.

- `2025-q3/` quarterly report for Q3 2025. Self-contained: cover page, header,
  footer and tables are all declared in `main.typ`. Image paths were changed to
  root paths so it still compiles: `typst compile --root . archive/2025-q3/main.typ`.
- `single-fund-prototype/` the per-fund section before it became `lib/funds.typ`.
  Where the fund constructors and the validation come from.
- `2026-q2-draft/` a different design with donut, bar and line charts, never
  published. Needs the cetz package, so it only compiles with network access.
