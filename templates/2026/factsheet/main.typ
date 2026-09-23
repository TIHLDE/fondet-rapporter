#import "/lib/doc.typ": note
#import "/lib/tables.typ": data-table, key-values
#import "/lib/funds.typ": weight-overview
#import "funds.typ": funds

// One page. Everything a reader needs before deciding whether to read more:
// what the portfolio is, what it returned against its benchmark, what it holds,
// what it risks and what it costs.
#show: note.with(
  title: "Porteføljeoversikt QX YYYY",
  subtitle: "TIHLDE Fondet, forvaltet av Forvaltningsgruppen. Alle tall per DD.MM.YYYY.",
  year: "YYYY",
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 16pt,
  [
    == Nøkkeltall

    #key-values(
      (
        ([Forvaltningskapital], [TODO NOK]),
        ([Antall fond], [TODO]),
        ([Kontantandel], [TODO %]),
        ([Vektet kostnadsgrad (TER)], [TODO %]),
        ([Referanseindeks], [OSEBX]),
        ([Oppstart], [TODO]),
      ),
      headers: ([Måling], [Verdi]),
    )
  ],
  [
    == Mandat

    TODO: to setninger om hva porteføljen skal gjøre, hvilken risiko den tar og
    hvilken tidshorisont den forvaltes mot.
  ],
)

== Avkastning

Alle tall er tidsvektet og etter kostnader. Differansen er i prosentpoeng.

#data-table(
  ([Periode], [Fondet], [OSEBX], [Differanse]),
  (
    ([Kvartalet], [TODO], [TODO], [TODO]),
    ([Hittil i år], [TODO], [TODO], [TODO]),
    ([1 år], [TODO], [TODO], [TODO]),
    ([3 år], [TODO], [TODO], [TODO]),
    ([5 år], [TODO], [TODO], [TODO]),
    ([Siden oppstart], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

== Fordeling

#weight-overview(funds)

== Risiko

#data-table(
  ([Mål], [1 år], [3 år], [5 år]),
  (
    ([Standardavvik], [TODO], [TODO], [TODO]),
    ([Beta mot OSEBX], [TODO], [TODO], [TODO]),
    ([Sharpe-ratio], [TODO], [TODO], [TODO]),
    ([Tracking error], [TODO], [TODO], [TODO]),
    ([Informasjonsrate], [TODO], [TODO], [TODO]),
    ([Maksimalt fall], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

== Kommentar

TODO: maks fem setninger. Hva drev avkastningen, hva trakk ned, og hva endret
seg i porteføljen.
