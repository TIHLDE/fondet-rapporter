#import "/lib/doc.typ": report
#import "/lib/tables.typ": data-table, key-values, people
#import "/lib/funds.typ": fund-section, weight-overview
#import "/lib/glossary.typ": glossary
#import "funds.typ": funds

#show: report.with(
  title: "Årsrapport YYYY",
  period: "YYYY",
  year: "YYYY",
)

= Om fondet

== Forvaltningsgruppens ansvar

Forvaltningsgruppen har som overordnet visjon å sikre fremtidig økonomisk trygghet
for TIHLDE, samt balansere dette med dagens behov i linjeforeningen. Dette vil
oppnås gjennom fornuftig allokering av de økonomiske midlene som er tilgjengelig,
uten at de eksponeres mot unødvendig stor risiko. Forvaltningsgruppen har som
ansvar å forvalte ressursene for linjeforeningens beste, for fremtiden og for i dag.

Les mer om TIHLDE-Fondet, og Forvaltningsgruppen sin overordnede strategi på
#link("https://fondet.tihlde.org/")[fondet.tihlde.org].

= Status Forvaltningsgruppen

== Året som har gått

=== Kort sammendrag

- TODO

=== Kvartal for kvartal

#data-table(
  ([Kvartal], [Avkastning], [OSEBX], [Mer-/mindreavkastning]),
  (
    ([Q1], [TODO], [TODO], [TODO]),
    ([Q2], [TODO], [TODO], [TODO]),
    ([Q3], [TODO], [TODO], [TODO]),
    ([Q4], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

=== Hva gikk bra

+ *TODO*
  - TODO

=== Hva gikk dårlig

+ *TODO*
  - TODO

=== Læring og beslutninger

- TODO

== Scorecard YYYY

#key-values((
  ([Totalavkastning YYYY], [TODO]),
  ([Relativ til OSEBX], [TODO]),
  ([Kostnader], [TODO]),
))

== Medlemmer

#set heading(outlined: false)

=== Forvalter

#people((("TODO: navn", "TODO: studie og klasse", "TODO"),))

=== Nestleder

#people((("TODO: navn", "TODO: studie og klasse", "TODO"),))

=== Analytikere

#people((
  ("TODO: navn", "TODO: studie og klasse", "TODO"),
))

=== Den Eldste

#people((("TODO: navn", "TODO: studie og klasse", "TODO"),))

#set heading(outlined: true)

= Porteføljestatus

_"Målet til fondet er ikke å slå markedet men å ha en trygg positiv avkastning i en lang periode."_

#weight-overview(funds)

#for data in funds [
  #fund-section(data)
]

= Analyse

== Attribusjon

Meravkastningen mot OSEBX brutt ned i allokering, seleksjon og samspill. Summen
er lik differansen mot indeks.

#data-table(
  ([Segment], [Allokering], [Seleksjon], [Samspill], [Sum]),
  (
    ([TODO], [TODO], [TODO], [TODO], [TODO]),
    ([TODO], [TODO], [TODO], [TODO], [TODO]),
    ([*Totalt*], [TODO], [TODO], [TODO], [*TODO*]),
  ),
  align: (left, right, right, right, right),
)

TODO: én setning om hva nedbrytingen betyr. Kom meravkastningen fra vektene
eller fra utvalget, og er det gjentakbart.

== Risikojustert avkastning

#data-table(
  ([Mål], [Fondet], [OSEBX]),
  (
    ([Standardavvik], [TODO], [TODO]),
    ([Sharpe-ratio], [TODO], [TODO]),
    ([Tracking error], [TODO], [—]),
    ([Informasjonsrate], [TODO], [—]),
    ([Maksimalt fall], [TODO], [TODO]),
  ),
  align: (left, right, right),
)

== Valutaeffekt

TODO: hvor mye av avkastningen i kroner som kom fra kursbevegelser og hvor mye
fra valuta. Uten dette skillet får forvaltningen ros eller skyld for kronekursen.

= Økonomi YYYY, retrospekt

== Finansiell oversikt

#data-table(
  ([], [YYYY], [YYYY-1]),
  (
    ([Forvaltningskapital ved årsstart], [TODO], [TODO]),
    ([Investeringsresultat i perioden], [TODO], [TODO]),
    ([Forvaltningskapital ved årsslutt], [TODO], [TODO]),
    ([Nettoavkastning (etter kostnader og honorar)], [TODO], [TODO]),
    ([Kontantandel per årsslutt], [TODO], [TODO]),
  ),
  align: (left, right, right),
)

== Drivere

TODO

== Kostnadsbilde

TODO

== Utsikter for neste år

TODO

== Tiltak

TODO

#pagebreak()

#glossary()
