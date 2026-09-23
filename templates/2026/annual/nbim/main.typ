#import "/lib/doc.typ": report
#import "/lib/tables.typ": data-table, key-values
#import "/lib/funds.typ": fund-summary, weight-overview
#import "funds.typ": funds

// Shaped like the reports of the Norwegian sovereign wealth fund: the return
// first, then the return against the benchmark as its own chapter, then the
// framework the fund operates inside, and the accounts at the back.
#show: report.with(
  title: "Årsrapport YYYY",
  period: "YYYY",
  year: "YYYY",
)

= Avkastning

Fondet fikk en avkastning på TODO prosent i YYYY.

#key-values(
  (
    ([Avkastning], [TODO %]),
    ([Referanseindeks], [TODO %]),
    ([Relativ avkastning], [TODO pp]),
    ([Forvaltningskapital ved årsslutt], [TODO NOK]),
    ([Kostnader], [TODO NOK]),
  ),
  headers: ([Måling], [YYYY]),
)

== Avkastning per aktivaklasse

#data-table(
  ([Aktivaklasse], [Vekt ved årsslutt], [Avkastning], [Bidrag]),
  (
    ([Globale aksjefond], [TODO %], [TODO %], [TODO pp]),
    ([Nordiske aksjefond], [TODO %], [TODO %], [TODO pp]),
    ([Kontanter], [TODO %], [TODO %], [TODO pp]),
    ([*Totalt*], [100 %], [*TODO %*], [*TODO pp*]),
  ),
  align: (left, right, right, right),
)

== Avkastning over tid

#data-table(
  ([Periode], [Fondet], [Referanseindeks], [Relativt]),
  (
    ([1 år], [TODO], [TODO], [TODO]),
    ([3 år årlig], [TODO], [TODO], [TODO]),
    ([5 år årlig], [TODO], [TODO], [TODO]),
    ([Siden oppstart årlig], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

= Relativ avkastning

Fondet fikk en avkastning TODO prosentpoeng TODO enn referanseindeksen.

== Hva forskjellen kom av

#data-table(
  ([Kilde], [Bidrag], [Forklaring]),
  (
    ([Valg av fond], [TODO pp], [TODO]),
    ([Vekting mot indeks], [TODO pp], [TODO]),
    ([Kostnader], [TODO pp], [TODO]),
    ([Kontantandel], [TODO pp], [TODO]),
    ([*Sum*], [*TODO pp*], []),
  ),
  align: (left, right, left),
)

TODO: kostnadslinjen er alltid negativ. Står den ikke der, er nedbrytingen ikke
ferdig.

= Rammene fondet forvaltes innenfor

== Mandat

TODO: hva forvaltningsgruppen har lov til, hvem som har gitt mandatet, og når
det sist ble endret.

== Rammer og bruk

#data-table(
  ([Ramme], [Grense], [Høyeste i året], [Ved årsslutt], [Innenfor]),
  (
    ([Vekt i ett fond], [TODO %], [TODO %], [TODO %], [TODO]),
    ([Aksjeandel], [TODO %], [TODO %], [TODO %], [TODO]),
    ([Kontantandel], [TODO %], [TODO %], [TODO %], [TODO]),
    ([Tracking error], [TODO], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right, center),
)

== Hendelser

TODO: feil, brudd og nesten-brudd i året, hva de kostet, og hva som ble endret
for at de ikke gjentas. Var det ingen, skriv det uttrykkelig.

= Ansvarlige investeringer

TODO: hva fondet ikke investerer i og hvem som har bestemt det. Hvis fondene
eier selskaper gruppen mener foreningen ikke bør eie, hør hvordan det håndteres.

= Porteføljen

#weight-overview(funds)

#v(10pt)

#fund-summary(funds)

= Regnskap

== Resultat

#data-table(
  ([], [YYYY], [YYYY-1]),
  (
    ([Realiserte gevinster og tap], [TODO], [TODO]),
    ([Urealiserte verdiendringer], [TODO], [TODO]),
    ([Utbytte og renteinntekter], [TODO], [TODO]),
    ([Kostnader], [TODO], [TODO]),
    ([*Resultat*], [*TODO*], [*TODO*]),
  ),
  align: (left, right, right),
)

== Balanse

#data-table(
  ([], [YYYY], [YYYY-1]),
  (
    ([Verdipapirfond], [TODO], [TODO]),
    ([Bankinnskudd], [TODO], [TODO]),
    ([Gjeld], [TODO], [TODO]),
    ([*Netto verdi*], [*TODO*], [*TODO*]),
  ),
  align: (left, right, right),
)

== Endringer i kapitalen

#data-table(
  ([], [YYYY], [YYYY-1]),
  (
    ([Kapital ved årsstart], [TODO], [TODO]),
    ([Innskudd], [TODO], [TODO]),
    ([Uttak], [TODO], [TODO]),
    ([Resultat], [TODO], [TODO]),
    ([*Kapital ved årsslutt*], [*TODO*], [*TODO*]),
  ),
  align: (left, right, right),
)

== Noter

TODO: verdsettelse, kostnadsberegning, uttaksregel, nærstående.
