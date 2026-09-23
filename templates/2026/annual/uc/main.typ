#import "/lib/doc.typ": report
#import "/lib/tables.typ": data-table, key-values, people
#import "/lib/funds.typ": fund-section, weight-overview
#import "/lib/glossary.typ": glossary
#import "funds.typ": funds

// Annual report in the shape institutional endowments use towards the body that
// owns the money: what the report is for, what changed since last year, the
// overview, then the detail, then an appendix nobody reads until they need it.
#show: report.with(
  title: "Årsrapport YYYY",
  period: "YYYY",
  year: "YYYY",
)

= Formål

Denne rapporten gir TIHLDEs medlemmer og styre en oversikt over fondets
utvikling, forvaltning og risiko i YYYY. Den er utarbeidet av
Forvaltningsgruppen.

Tallene er hentet fra TODO: kilde, med kursdato TODO. Avkastning er tidsvektet
og etter kostnader, med mindre noe annet står.

= Endringer siden forrige år

TODO: alt som gjør årets tall vanskelige å sammenligne med fjorårets. Ny
referanseindeks, endret mandat, uttak eller innskudd, ny beregningsmetode. Står
det ingenting her, si det uttrykkelig.

= Oversikt

== Kapitalutvikling

#data-table(
  ([], [YYYY], [YYYY-1], [YYYY-2]),
  (
    ([Forvaltningskapital ved årsstart], [TODO], [TODO], [TODO]),
    ([Innskudd], [TODO], [TODO], [TODO]),
    ([Uttak], [TODO], [TODO], [TODO]),
    ([Investeringsresultat], [TODO], [TODO], [TODO]),
    ([Forvaltningskapital ved årsslutt], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

== Avkastning mot referanseindeks

#data-table(
  ([Periode], [Fondet], [OSEBX], [Differanse]),
  (
    ([1 år], [TODO], [TODO], [TODO]),
    ([3 år årlig], [TODO], [TODO], [TODO]),
    ([5 år årlig], [TODO], [TODO], [TODO]),
    ([Siden oppstart årlig], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

== Relativ avkastning

TODO: differansen mot indeks i prosentpoeng, og hva den kom av. Et fond som
ligger tett på indeksen skal si det rett ut: da er det indeksen som forklarer
resultatet, ikke forvaltningen.

== Kvartal for kvartal

#data-table(
  ([Kvartal], [Fondet], [OSEBX], [Differanse]),
  (
    ([Q1], [TODO], [TODO], [TODO]),
    ([Q2], [TODO], [TODO], [TODO]),
    ([Q3], [TODO], [TODO], [TODO]),
    ([Q4], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

== Fordeling ved årsslutt

#weight-overview(funds)

= Forvaltningen

== Mandat og strategi

TODO: hva fondet skal oppnå, hvilken risiko det har lov til å ta, og hvordan
midlene fordeles. To avsnitt.

== Året som gikk

TODO: hva som drev resultatet, hva som trakk ned, og hvilke beslutninger som ble
tatt underveis.

== Rammer og risikostyring

#data-table(
  ([Ramme], [Grense], [Brukt i år], [Innenfor]),
  (
    ([Maksimal vekt i ett fond], [TODO %], [TODO %], [TODO]),
    ([Maksimal aksjeandel], [TODO %], [TODO %], [TODO]),
    ([Minste kontantandel], [TODO %], [TODO %], [TODO]),
    ([Maksimal tracking error], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, center),
)

TODO: hvert brudd på en ramme, når det oppsto og hva som ble gjort. Sto alt
innenfor, skriv det.

== Ansvarlige investeringer

TODO: hvilke selskaper eller bransjer fondet ikke investerer i, hvem som har
bestemt det, og hva som ble endret i år.

== Kostnader

#key-values((
  ([Vektet kostnadsgrad], [TODO %]),
  ([Samlede kostnader i kroner], [TODO NOK]),
  ([Dyreste fond], [TODO]),
  ([Billigste fond], [TODO]),
))

TODO: en setning om hvorvidt de aktive fondene tjente inn honoraret sitt.

== Medlemmer

#set heading(outlined: false)

=== Forvalter

#people((("TODO: navn", "TODO: studie og klasse", "TODO"),))

=== Analytikere

#people((
  ("TODO: navn", "TODO: studie og klasse", "TODO"),
))

#set heading(outlined: true)

= Porteføljen

#for data in funds [
  #fund-section(data)
]

= Appendiks

== Risiko og avkastning

#data-table(
  ([Mål], [Fondet], [OSEBX]),
  (
    ([Standardavvik], [TODO], [TODO]),
    ([Sharpe-ratio], [TODO], [TODO]),
    ([Tracking error], [TODO], [—]),
    ([Informasjonsrate], [TODO], [—]),
    ([Beta], [TODO], [1,00]),
    ([Maksimalt fall], [TODO], [TODO]),
  ),
  align: (left, right, right),
)

== Valg av referanseindeks

TODO: hvorfor OSEBX, og hva som taler mot den. En indeks valgt i ettertid
pynter på resultatet, så begrunn valget og hold det fast.

== Uttaksregel

TODO: hvor mye linjeforeningen kan ta ut og etter hvilken regel, samt hva som
ble tatt ut i år.

== Datakilder

TODO: hvor hvert tall kommer fra og hvem som har ansvaret for det.

#pagebreak()

#glossary()
