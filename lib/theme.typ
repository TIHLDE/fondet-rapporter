// Visual identity. Every other module reads its colours and fonts from here.

#let blue = rgb(28, 69, 138)
#let ink = rgb(22, 22, 22)
#let muted = luma(85)
#let rule = luma(190)
#let table-header = luma(235)
#let table-zebra = luma(245)

// Return colours, both at 4.5:1 or better against white.
#let positive = rgb(21, 102, 63)
#let negative = rgb(176, 42, 55)

// Roboto is what the Typst web app ships. The rest are local fallbacks so the
// report still compiles the same way on a laptop and in CI.
#let body-font = (
  "Roboto",
  "Liberation Sans",
  "Noto Sans",
  "DejaVu Sans",
  "Helvetica",
  "Arial",
)

#let body-size = 10pt
#let small-size = 8.5pt

// Categorical palette for weight charts. Distinct in hue and in lightness,
// so the chart still reads when printed in grayscale.
#let palette = (
  rgb(28, 69, 138),
  rgb(60, 160, 101),
  rgb(123, 94, 167),
  rgb(224, 123, 42),
  rgb(44, 110, 158),
  rgb(201, 64, 80),
  rgb(90, 180, 160),
  rgb(120, 120, 120),
)
