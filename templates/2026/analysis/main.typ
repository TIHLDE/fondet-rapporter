#import "/lib/doc.typ": note
#import "/lib/tables.typ": data-table

// Standalone analysis note. Use it when the quarterly report needs more than a
// paragraph to explain where the return came from, or once a year as a check on
// whether the portfolio takes the risk it thinks it takes.
#show: note.with(
  title: "Analysenotat QX YYYY",
  subtitle: "Attribusjon, risikojustert avkastning og eksponering. Tall per DD.MM.YYYY.",
  year: "YYYY",
)

= Sammendrag

TODO: tre setninger. Hvor meravkastningen kom fra, hvor mye risiko som ble tatt
for den, og hva analysen endrer i porteføljen.

= Attribusjon

Meravkastningen brytes ned per segment i allokering (vekt mot indeks),
seleksjon (utvalg innen segmentet) og samspill. Summen skal være lik
differansen mot referanseindeks.

#data-table(
  ([Segment], [Vekt fond], [Vekt indeks], [Allokering], [Seleksjon], [Samspill], [Sum]),
  (
    ([TODO], [TODO %], [TODO %], [TODO], [TODO], [TODO], [TODO]),
    ([TODO], [TODO %], [TODO %], [TODO], [TODO], [TODO], [TODO]),
    ([*Totalt*], [100 %], [100 %], [TODO], [TODO], [TODO], [*TODO*]),
  ),
  align: (left, right, right, right, right, right, right),
)

TODO: én setning per rad som betyr noe. Positiv allokering uten positiv
seleksjon betyr at vi traff på markedet, ikke på utvalget.

= Valuta

Avkastning i norske kroner er lokal avkastning pluss valutaeffekt. Del dem, ellers
tilskrives valutabevegelser feilaktig til forvaltningen.

#data-table(
  ([Eksponering], [Lokal avkastning], [Valutaeffekt], [Avkastning i NOK]),
  (
    ([USD], [TODO], [TODO], [TODO]),
    ([EUR], [TODO], [TODO], [TODO]),
    ([SEK og DKK], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

= Risikojustert avkastning

#data-table(
  ([Mål], [Fondet], [OSEBX], [Tolkning]),
  (
    ([Standardavvik], [TODO], [TODO], [TODO]),
    ([Sharpe-ratio], [TODO], [TODO], [TODO]),
    ([Sortino-ratio], [TODO], [TODO], [TODO]),
    ([Tracking error], [TODO], [—], [TODO]),
    ([Informasjonsrate], [TODO], [—], [TODO]),
    ([Beta], [TODO], [1,00], [TODO]),
    ([Alfa], [TODO], [—], [TODO]),
    ([Maksimalt fall], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, left),
)

TODO: Sharpe belønner all svingning likt, Sortino straffer bare nedsiden.
Spriker de, er avkastningen skjevfordelt og det bør sies rett ut.

= Konsentrasjon og aktiv andel

#data-table(
  ([Mål], [Verdi], [Forrige periode], [Kommentar]),
  (
    ([Aktiv andel], [TODO %], [TODO %], [TODO]),
    ([Topp 5 poster], [TODO %], [TODO %], [TODO]),
    ([Herfindahl-indeks], [TODO], [TODO], [TODO]),
    ([Antall fond], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, left),
)

= Stresstest

Hva porteføljen taper i scenarier vi faktisk kan møte. Bruk historiske perioder
der det finnes tall, ikke oppdiktede sjokk.

#data-table(
  ([Scenario], [Antatt bevegelse], [Effekt på porteføljen]),
  (
    ([Bredt fall i aksjemarkedet], [TODO], [TODO]),
    ([Kronen styrker seg], [TODO], [TODO]),
    ([Teknologisektoren faller], [TODO], [TODO]),
    ([Renteoppgang], [TODO], [TODO]),
  ),
  align: (left, right, right),
)

= Hva analysen endrer

TODO: konkrete tiltak med frist og ansvarlig. En analyse uten en beslutning er
en øvelse.
