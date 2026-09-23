#let TIHLDE_BLUE = rgb(28, 69, 138)

#let asset_image(file_name, ..arguments) = image("/assets/" + file_name, ..arguments)

#let require_nonempty(value, message) = {
  if value == none or value == "" { panic(message) }
  value
}

#let apply_template(
  paper_name: none,
  month_year: none,
  year: none,
) = {
  let resolved_paper_name = require_nonempty(paper_name, "Mangler paper_name i apply_template")
  let resolved_month_year = require_nonempty(month_year, "Mangler month_year i apply_template")

  set text(font: "Roboto", size: 10pt)
  show link: underline
  set par(leading: 1.4em, spacing: 2em)
  show heading: set block(below: 18pt, above: 24pt)
  set text(lang: "nb")

  // Forside
  align(center)[
    #v(6%)
    #line(length: 85%, stroke: (paint: TIHLDE_BLUE, thickness: 1pt))
    #v(0pt)

    #block(
      width: 90%,
      inset: 22pt,
      radius: 6pt,
      stroke: (paint: TIHLDE_BLUE, thickness: 1.5pt)
    )[
      #align(center)[
        #asset_image("liten-blaa.png", height: 8cm)
        #v(0pt)
        #text(size: 3em, weight: "bold")[#resolved_paper_name]
        #v(-40pt)
        #asset_image("Logo-blaa-transparent.png", width: 8cm)
        #v(6pt)
        #line(length: 40%, stroke: (paint: TIHLDE_BLUE, thickness: 1.2pt))
        #v(0pt)
        #text(size: 1.05em, weight: "medium")[#resolved_month_year]
      ]
    ]

    #v(12pt)
    #line(length: 60%, stroke: (paint: TIHLDE_BLUE, thickness: 1pt))
  ]

  /*
  show heading.where(level: 3): set text(size: 1.1em)

  pagebreak()

  set page(
    header: [
      \
      #place(left, asset_image("liten-blaa.png", height: 0.7cm))
      #place(right, move(dy: 5pt, text(resolved_paper_name)))
      #place(move(dy: 25pt, line(length: 100%, stroke: (paint: TIHLDE_BLUE, thickness: 3pt))))
    ],
    footer: [
      #place(move(dy: -10pt, line(length: 100%, stroke: (paint: TIHLDE_BLUE, thickness: 3pt))))
      #place(left, year)
      #place(center, context counter(page).display("1/1", both: true))
      #place(right, "Forvaltningsgruppen")
    ],
  )

  outline()
  */
}
