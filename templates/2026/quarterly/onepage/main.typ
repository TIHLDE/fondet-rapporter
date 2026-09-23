#import "/lib/doc.typ": report
#import "/lib/tables.typ": data-table, key-values
#import "/lib/funds.typ": weight-overview
#import "funds.typ": funds

// One page, no cover and no contents. For pinning to a channel or handing out
// before a meeting: the figures, the split, and five sentences.
#show: report.with(
  title: "Porteføljeoversikt QX YYYY",
  period: "QX YYYY",
  year: "YYYY",
  contents: false,
  numbered: false,
  cover-page: false,
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 16pt,
  [
    == Nøkkeltall

    #key-values(
      (
        ([Forvaltningskapital], [TODO NOK]),
        ([Kontantandel], [TODO %]),
        ([Vektet kostnadsgrad], [TODO %]),
        ([Antall fond], [TODO]),
        ([Referanseindeks], [OSEBX]),
      ),
      headers: ([Måling], [Verdi]),
    )
  ],
  [
    == Avkastning

    #data-table(
      ([Periode], [Fondet], [OSEBX], [Diff.]),
      (
        ([Kvartalet], [TODO], [TODO], [TODO]),
        ([Hittil i år], [TODO], [TODO], [TODO]),
        ([1 år], [TODO], [TODO], [TODO]),
        ([Siden start], [TODO], [TODO], [TODO]),
      ),
      align: (left, right, right, right),
    )
  ],
)

== Fordeling

#weight-overview(funds)

== Kvartalet i korte trekk

TODO: fem setninger. Hva avkastningen ble mot indeks, hva som drev den, hva som
trakk ned, hva som ble endret, og hva vi ser etter neste kvartal.
