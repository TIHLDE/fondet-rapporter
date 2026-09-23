#import "/lib/doc.typ": report
#import "/lib/tables.typ": data-table, key-values
#import "/lib/funds.typ": fund-summary, weight-overview
#import "/lib/glossary.typ": glossary
#import "funds.typ": funds

// The year with the accounts in front. Follows what a fund's annual report is
// required to carry: a statement of assets and liabilities, an income and
// expenditure account, a report on the year's activity, and the holdings in
// full. A student fund is not a UCITS, but the list is a sound floor.
#show: report.with(
  title: "Årsregnskap og årsrapport YYYY",
  period: "YYYY",
  year: "YYYY",
)

= Om rapporten

Rapporten dekker kalenderåret YYYY og er utarbeidet av Forvaltningsgruppen for
TIHLDEs styre og medlemmer.

Tallene er hentet fra TODO: kilde, per TODO: dato. Beholdningene er verdsatt til
kurs ved årsslutt. Avkastning er tidsvektet og etter kostnader.

TODO: hvem som har kontrollert tallene, og hva kontrollen bestod i. Er de ikke
kontrollert av noen utenfor gruppen, skriv det.

= Oppstilling av eiendeler og gjeld

#data-table(
  ([], [YYYY], [YYYY-1]),
  (
    ([Verdipapirfond], [TODO], [TODO]),
    ([Bankinnskudd], [TODO], [TODO]),
    ([Opptjente, ikke mottatte inntekter], [TODO], [TODO]),
    ([*Sum eiendeler*], [*TODO*], [*TODO*]),
    ([Skyldige kostnader], [TODO], [TODO]),
    ([*Sum gjeld*], [*TODO*], [*TODO*]),
    ([*Netto verdi*], [*TODO*], [*TODO*]),
  ),
  align: (left, right, right),
)

= Inntekter og kostnader

#data-table(
  ([], [YYYY], [YYYY-1]),
  (
    ([Realiserte gevinster og tap], [TODO], [TODO]),
    ([Urealiserte verdiendringer], [TODO], [TODO]),
    ([Utbytte og renteinntekter], [TODO], [TODO]),
    ([*Sum inntekter*], [*TODO*], [*TODO*]),
    ([Forvaltningshonorar i fondene], [TODO], [TODO]),
    ([Kurtasje og transaksjonskostnader], [TODO], [TODO]),
    ([Plattformkostnader], [TODO], [TODO]),
    ([*Sum kostnader*], [*TODO*], [*TODO*]),
    ([*Resultat*], [*TODO*], [*TODO*]),
  ),
  align: (left, right, right),
)

= Endringer i kapitalen

#data-table(
  ([], [YYYY], [YYYY-1]),
  (
    ([Kapital ved årsstart], [TODO], [TODO]),
    ([Innskudd fra foreningen], [TODO], [TODO]),
    ([Uttak til foreningen], [TODO], [TODO]),
    ([Resultat], [TODO], [TODO]),
    ([*Kapital ved årsslutt*], [*TODO*], [*TODO*]),
  ),
  align: (left, right, right),
)

= Året som gikk

== Avkastning

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

== Forvaltningen i året

TODO: to eller tre avsnitt om hva som ble gjort og hvorfor. Endringene i
porteføljen, hva de kostet, og hva de ga.

== Risiko

#key-values((
  ([Standardavvik], [TODO]),
  ([Sharpe-ratio], [TODO]),
  ([Tracking error], [TODO]),
  ([Maksimalt fall i året], [TODO]),
  ([Største enkeltpost], [TODO %]),
))

= Beholdninger ved årsslutt

#weight-overview(funds)

#v(10pt)

#fund-summary(funds)

TODO: legg til en linje per fond med antall andeler, kostpris og markedsverdi
hvis styret ber om det.

= Noter

== Note 1, verdsettelse

TODO: hvilken kurs som er brukt, og hva som gjøres når en kurs mangler.

== Note 2, kostnader

TODO: hvordan de løpende kostnadene i fondene er beregnet, og hva som ikke er
med i tallet.

== Note 3, uttaksregel

TODO: regelen for hva foreningen kan ta ut, og hva som faktisk ble tatt ut.

== Note 4, nærstående

TODO: transaksjoner mellom fondet og foreningen eller medlemmer av gruppen. Er
det ingen, skriv det.

#pagebreak()

#glossary()
