#import "/lib/slides.typ": deck, slide, figure-tile
#import "/lib/tables.typ": data-table
#import "/lib/funds.typ": weight-overview, fund-summary
#import "funds.typ": funds

// For presenting the quarter to a meeting. Ten slides, one point each. The
// written report carries the detail; this carries the argument.
#show: deck.with(
  title: "Kvartalet QX YYYY",
  period: "Forvaltningsgruppen, TODO dato",
)

#slide("Kvartalet i tre tall")[
  #grid(
    columns: (1fr, 1fr, 1fr),
    figure-tile[TODO %][Avkastning i kvartalet],
    figure-tile[TODO %][OSEBX],
    figure-tile[TODO pp][Differanse],
  )
]

#slide("Hva vi eier")[
  #weight-overview(funds)
]

#slide("Avkastning")[
  #set text(size: 14pt)
  #data-table(
    ([Periode], [Porteføljen], [OSEBX], [Differanse]),
    (
      ([Kvartalet], [TODO], [TODO], [TODO]),
      ([Hittil i år], [TODO], [TODO], [TODO]),
      ([Siden start], [TODO], [TODO], [TODO]),
    ),
    align: (left, right, right, right),
  )
]

#slide("Hva drev resultatet")[
  - TODO: største positive bidrag, i prosentpoeng
  - TODO: største negative bidrag, i prosentpoeng
  - TODO: hva av dette var markedet og hva var våre valg
]

#slide("Hva vi endret")[
  - TODO: kjøpt, med begrunnelsen som ble gitt da
  - TODO: solgt, med begrunnelsen som ble gitt da
]

#slide("Porteføljen")[
  #set text(size: 12pt)
  #fund-summary(funds)
]

#slide("Risiko")[
  - TODO: den største enkeltrisikoen i porteføljen nå
  - TODO: hva den koster oss hvis den slår til
  - TODO: hva vi gjør med den
]

#slide("Neste kvartal")[
  - TODO: hva vi planlegger
  - TODO: hva som må være sant for at planen holder
]

#slide("Hva vi tok feil om")[
  TODO: forrige kvartals forventning holdt opp mot hva som skjedde. Ett punkt er
  nok, men det skal være et ekte et.
]

#slide("Spørsmål")[
  #align(center + horizon)[
    #text(size: 24pt)[fondet.tihlde.org]
  ]
]
