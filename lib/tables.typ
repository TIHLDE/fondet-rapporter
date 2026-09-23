#import "theme.typ"

#let _check-rows(headers, rows) = {
  for (index, row) in rows.enumerate() {
    if row.len() != headers.len() {
      panic(
        "Row " + str(index) + " has " + str(row.len()) + " cells, expected "
          + str(headers.len()) + ".",
      )
    }
  }
  rows
}

#let _zebra(index, cells) = {
  let fill = if calc.odd(index) { theme.table-zebra } else { none }
  cells.map(cell => table.cell(fill: fill)[#cell])
}

// Bordered table with a filled header row and zebra striping.
// `align` takes one value for every column, or a single value for all of them.
#let data-table(headers, rows, align: (left,)) = {
  let columns = headers.len()
  let alignments = if align.len() == columns { align } else { (align.at(0),) * columns }

  table(
    columns: columns,
    inset: 6pt,
    align: alignments,
    stroke: 0.6pt + theme.rule,
    ..headers.map(header => table.cell(fill: theme.table-header)[*#header*]),
    .._check-rows(headers, rows)
      .enumerate()
      .map(((index, cells)) => _zebra(index, cells))
      .flatten(),
  )
}

// Two-column list of figures. Rules top and bottom only, as in the scorecard.
#let key-values(rows, headers: ([Måling], [Status])) = align(center, table(
  columns: (auto, auto),
  align: (left, right),
  inset: 6pt,
  stroke: (top: 0.5pt + theme.rule, bottom: 0.5pt + theme.rule),
  ..headers.map(header => [*#header*]),
  ..rows.flatten(),
))

// Member list: name, field of study, age.
#let people(entries) = for (name, study, age) in entries {
  grid(
    columns: (1fr, 1.5fr, auto),
    gutter: 1em,
    [#name], [#study], [#age år],
  )
}
