#import "theme.typ"

// Slides for presenting a quarter to a meeting. Same colours and fonts as the
// reports, no package: Typst has a 16:9 paper size built in.

#let deck(title: none, period: none, body) = {
  set document(title: title, author: "Forvaltningsgruppen, TIHLDE")
  set text(font: theme.body-font, size: 18pt, lang: "nb", fill: theme.ink)
  set par(leading: 0.7em, spacing: 1em)
  show link: underline

  set page(
    paper: "presentation-16-9",
    margin: (x: 60pt, top: 55pt, bottom: 50pt),
    footer: context {
      set text(size: 11pt, fill: theme.muted)
      grid(
        columns: (auto, 1fr, auto),
        align: (left + horizon, center + horizon, right + horizon),
        image("/assets/liten-blaa.png", height: 0.5cm),
        [#title],
        counter(page).display("1/1", both: true),
      )
    },
  )

  set list(marker: text(fill: theme.blue)[•], spacing: 1.1em)
  show heading.where(level: 1): set text(size: 30pt, fill: theme.blue)
  show heading: set block(below: 18pt)

  // Title slide, without the footer.
  page(footer: none)[
    #align(center + horizon)[
      #image("/assets/Logo-blaa-transparent.png", width: 40%)
      #v(10pt)
      #text(size: 40pt, weight: "bold")[#title]
      #v(-6pt)
      #line(length: 30%, stroke: 1.5pt + theme.blue)
      #v(4pt)
      #text(size: 20pt, fill: theme.muted)[#period]
    ]
  ]

  body
}

// One slide. Starts a new page, so the body decides how full it gets.
#let slide(title, body) = {
  pagebreak(weak: true)
  heading(level: 1, title)
  body
}

// Big number with a label under it, for the figures that carry a slide.
#let figure-tile(value, label) = align(center)[
  #text(size: 42pt, weight: "bold", fill: theme.blue)[#value]
  #v(-14pt)
  #text(size: 14pt, fill: theme.muted)[#label]
]
