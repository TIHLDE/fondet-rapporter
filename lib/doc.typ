#import "theme.typ"

// Cover page: logo, title, period. Same layout for every report type.
#let cover(title, period) = align(center)[
  #v(6%)
  #line(length: 85%, stroke: 1pt + theme.blue)
  #block(
    width: 90%,
    inset: 22pt,
    radius: 6pt,
    stroke: 1.5pt + theme.blue,
  )[
    #image("/assets/liten-blaa.png", height: 8cm)
    #text(size: 3em, weight: "bold")[#title]
    #v(-24pt)
    #image("/assets/Logo-blaa-transparent.png", width: 8cm)
    #v(6pt)
    #line(length: 40%, stroke: 1.2pt + theme.blue)
    #v(2pt)
    #text(size: 1.05em, weight: "medium")[#period]
  ]
  #v(12pt)
  #line(length: 60%, stroke: 1pt + theme.blue)
]

// Wrap a report with `#show: report.with(title: ..., period: ..., year: ...)`.
// Everything after the show rule is the body.
#let report(title: none, period: none, year: none, outline-title: "Innhold", body) = {
  set document(title: title, author: "Forvaltningsgruppen, TIHLDE")
  set text(font: theme.body-font, size: theme.body-size, lang: "nb", fill: theme.ink)
  set par(justify: true, leading: 0.8em, spacing: 1.2em)
  show link: underline

  // Number chapters and sections, but not the headings inside a section.
  set heading(numbering: (..parts) => {
    if parts.pos().len() <= 2 { numbering("1.1", ..parts.pos()) }
  })
  show heading: set block(above: 20pt, below: 10pt)
  show heading.where(level: 1): set text(size: 1.6em, fill: theme.blue)
  show heading.where(level: 2): set text(size: 1.2em, fill: theme.blue)
  show heading.where(level: 3): set text(size: 1.1em)

  cover(title, period)
  pagebreak()

  set page(
    paper: "a4",
    margin: (x: 50pt, top: 0.75in, bottom: 50pt),
    header-ascent: 20pt,
    footer-descent: 24pt,
    header: {
      grid(
        columns: (auto, 1fr),
        align: (left + bottom, right + bottom),
        image("/assets/liten-blaa.png", height: 0.6cm),
        text(size: theme.small-size)[#title],
      )
      v(3pt)
      line(length: 100%, stroke: 3pt + theme.blue)
    },
    footer: context {
      line(length: 100%, stroke: 3pt + theme.blue)
      v(2pt)
      set text(size: theme.small-size)
      grid(
        columns: (1fr, auto, 1fr),
        align: (left, center, right),
        [#year],
        counter(page).display("1/1", both: true),
        [Forvaltningsgruppen],
      )
    },
  )

  outline(title: outline-title)
  pagebreak()

  body

  v(24pt, weak: true)
  align(center)[
    #text(size: theme.small-size, style: "italic")[
      Dette er Forvaltningsgruppens egne vurderinger og skal ikke leses som
      finansielle råd.
    ]
  ]
}
