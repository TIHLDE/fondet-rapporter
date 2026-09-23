#import "theme.typ"
#import "format.typ"

#let _colour(index, colours) = colours.at(calc.rem(index, colours.len()))

// items: ((label, value), ...) where value is a percentage.

// One horizontal bar split by weight. Reads better than a pie at this size and
// keeps every label outside the graphic, in the legend.
#let weight-bar(items, colours: theme.palette, height: 18pt) = {
  // Nothing to draw before the weights are filled in.
  if items.fold(0.0, (sum, item) => sum + item.at(1)) == 0 { return }
  grid(
    columns: items.map(item => item.at(1) * 1fr),
    ..items
      .enumerate()
      .map(((index, item)) => rect(
        width: 100%,
        height: height,
        stroke: 1pt + white,
        fill: _colour(index, colours),
      )),
  )
}

#let legend(items, colours: theme.palette) = {
  set text(size: theme.small-size)
  grid(
    columns: (auto, 1fr, auto),
    column-gutter: 6pt,
    row-gutter: 5pt,
    align: (horizon, horizon + left, horizon + right),
    ..items
      .enumerate()
      .map(((index, item)) => (
        rect(width: 9pt, height: 9pt, radius: 1pt, stroke: none, fill: _colour(index, colours)),
        [#item.at(0)],
        format.pct(item.at(1)),
      ))
      .flatten(),
  )
}

// Diverging bars around a zero line. Negative values grow left, positive right,
// and the value sits outside the bar, so nothing overlaps at any label length.
#let bar-chart(items, peak: none, row-height: 12pt) = {
  let limit = if peak != none { peak } else {
    items.fold(0.0, (highest, item) => calc.max(highest, calc.abs(item.at(1))))
  }
  // Nothing to draw before the numbers are filled in.
  if limit == 0.0 { return }
  set text(size: theme.small-size)

  grid(
    columns: (auto, 1fr, 1fr, auto),
    column-gutter: 6pt,
    row-gutter: 4pt,
    align: (left + horizon, right + horizon, left + horizon, right + horizon),
    grid.vline(x: 2, stroke: 0.5pt + theme.rule),
    ..items
      .map(item => {
        let (label, value) = item
        let width = calc.abs(value) / limit * 100%
        let colour = if value < 0 { theme.negative } else { theme.positive }
        (
          [#label],
          if value < 0 { rect(width: width, height: row-height, stroke: none, fill: colour) },
          if value >= 0 { rect(width: width, height: row-height, stroke: none, fill: colour) },
          text(fill: colour, weight: "bold")[#format.pct(value, sign: true)],
        )
      })
      .flatten(),
  )
}
