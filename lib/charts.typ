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
