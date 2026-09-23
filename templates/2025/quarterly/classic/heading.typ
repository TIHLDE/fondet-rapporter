#import "custom-colors.typ": TIHLDE_blue

#let heading(content) = block(
  above: 12pt,
  below: 8pt,
  text(fill: TIHLDE_blue, weight: "bold")[#content],
)
