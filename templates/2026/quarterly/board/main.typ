#import "/lib/doc.typ": report
#import "/lib/tables.typ": data-table, key-values
#import "funds.typ": funds

// For the board meeting. Opens with what the group needs a decision on, because
// that is the only part of the quarter the board can do anything about.
#show: report.with(
  title: "Styresak QX YYYY",
  period: "Forvaltningsgruppen til styret, TODO dato",
  year: "YYYY",
  contents: false,
  numbered: false,
  cover-page: false,
)

== Det vi ber om

#data-table(
  ([Sak], [Innstilling], [Frist]),
  (
    ([TODO], [TODO: vedta, avvise eller utsette], [TODO]),
    ([TODO], [TODO], [TODO]),
  ),
)

TODO: én setning per sak om hva som skjer hvis styret ikke tar stilling nå.

== Status

#key-values(
  (
    ([Forvaltningskapital], [TODO NOK]),
    ([Avkastning i kvartalet], [TODO %]),
    ([OSEBX i kvartalet], [TODO %]),
    ([Hittil i år], [TODO %]),
    ([Kostnader i kvartalet], [TODO NOK]),
    ([Uttak til foreningen], [TODO NOK]),
  ),
  headers: ([Måling], [Verdi]),
)

== Mot planen

#data-table(
  ([Det vi sa forrige kvartal], [Det som skjedde], [Avvik]),
  (
    ([TODO], [TODO], [TODO]),
    ([TODO], [TODO], [TODO]),
  ),
)

== Risiko

#data-table(
  ([Risiko], [Sannsynlighet], [Konsekvens], [Tiltak], [Eier]),
  (
    ([TODO], [TODO], [TODO], [TODO], [TODO]),
    ([TODO], [TODO], [TODO], [TODO], [TODO]),
  ),
)

== Rammer

#data-table(
  ([Ramme], [Grense], [Nå], [Innenfor]),
  (
    ([Maksimal vekt i ett fond], [TODO %], [TODO %], [TODO]),
    ([Maksimal aksjeandel], [TODO %], [TODO %], [TODO]),
    ([Minste kontantandel], [TODO %], [TODO %], [TODO]),
  ),
  align: (left, right, right, center),
)

== Neste kvartal

- TODO: hva gruppen gjør uten å spørre styret
- TODO: hva gruppen kommer tilbake til styret med

== Vedlegg

Full kvartalsrapport med fondsoversikt og analyse ligger i
#link("https://github.com/TIHLDE/fondet-rapporter")[rapportarkivet].
Porteføljen består av #funds.len() fond per kvartalsslutt.
