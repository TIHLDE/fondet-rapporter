#import "/lib/doc.typ": report
#import "/lib/tables.typ": data-table, key-values
#import "/lib/funds.typ": fund-summary, weight-overview
#import "/lib/charts.typ": bar-chart
#import "funds.typ": funds

// Status report in the shape fund managers use for their monthly and quarterly
// updates: facts, returns against the index, a chart of the calendar years, the
// manager's comment, and what the portfolio holds. Two or three pages, no
// table of contents.
#show: report.with(
  title: "Statusrapport QX YYYY",
  period: "QX YYYY",
  year: "YYYY",
  contents: false,
  numbered: false,
)

#grid(
  columns: (1fr, 1.6fr),
  column-gutter: 18pt,
  [
    == Fakta om porteføljen

    #key-values(
      (
        ([Forvaltningskapital], [TODO NOK]),
        ([Startdato], [TODO]),
        ([Referanseindeks], [OSEBX]),
        ([Antall fond], [TODO]),
        ([Vektet kostnadsgrad], [TODO %]),
        ([Kontantandel], [TODO %]),
        ([Risiko], [TODO av 7]),
      ),
      headers: ([Fakta], [Verdi]),
    )

    == Strategi

    TODO: tre til fire setninger om hva porteføljen investerer i, hvilken risiko
    den er ment å ta, og hvilken tidshorisont den forvaltes mot.
  ],
  [
    == Avkastning

    Tidsvektet og etter kostnader. Tall over tolv måneder er årlige.

    #data-table(
      ([Periode], [Porteføljen], [OSEBX], [Differanse]),
      (
        ([Kvartalet], [TODO], [TODO], [TODO]),
        ([Hittil i år], [TODO], [TODO], [TODO]),
        ([12 måneder], [TODO], [TODO], [TODO]),
        ([3 år], [TODO], [TODO], [TODO]),
        ([5 år], [TODO], [TODO], [TODO]),
        ([Siden start], [TODO], [TODO], [TODO]),
      ),
      align: (left, right, right, right),
    )

    == Avkastning per kalenderår

    #bar-chart((
      ([2022], 0.0),
      ([2023], 0.0),
      ([2024], 0.0),
      ([2025], 0.0),
      ([Hittil i år], 0.0),
    ))

    TODO: bytt nullene med faktiske årstall. Indeks står i tabellen over.
  ],
)

== Nøkkeltall

#data-table(
  ([Mål], [1 år], [3 år], [5 år]),
  (
    ([Standardavvik portefølje], [TODO], [TODO], [TODO]),
    ([Standardavvik indeks], [TODO], [TODO], [TODO]),
    ([Sharpe-ratio], [TODO], [TODO], [TODO]),
    ([Tracking error], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

== Forvalterkommentar

TODO: markedet først, i to eller tre setninger. Deretter porteføljen: hva bidro
mest positivt og negativt, med tall. Til slutt hva som ble endret og hvorfor.

== Beholdninger

#weight-overview(funds)

#v(8pt)

#fund-summary(funds)
