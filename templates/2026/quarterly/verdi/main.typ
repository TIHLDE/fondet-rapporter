#import "/lib/doc.typ": report
#import "/lib/tables.typ": data-table
#import "/lib/funds.typ": fund-summary
#import "funds.typ": funds

// Written as a letter. Same obligations as the full report, but the argument
// carries it instead of the section headings: what happened, what we did, what
// we think now. Use it for the quarters where nothing structural changed.
#show: report.with(
  title: "Kvartalsbrev QX YYYY",
  period: "QX YYYY",
  year: "YYYY",
  contents: false,
  numbered: false,
)

Til medlemmene i TIHLDE,

TODO: åpne med resultatet, ikke med markedet. Én setning med kvartalets
avkastning, indeksens avkastning og differansen. Deretter én setning om hva som
avgjorde forskjellen.

== Kvartalet i tall

#data-table(
  ([Periode], [Porteføljen], [OSEBX], [Differanse]),
  (
    ([Kvartalet], [TODO], [TODO], [TODO]),
    ([Hittil i år], [TODO], [TODO], [TODO]),
    ([Siden start], [TODO], [TODO], [TODO]),
  ),
  align: (left, right, right, right),
)

== Markedet

TODO: to avsnitt. Hva som faktisk skjedde i markedene vi er eksponert mot, og
hva av det som traff oss. Ikke gjenfortell nyheter vi ikke handlet på.

== Hva vi eide

TODO: de to største positive bidragsyterne og de to største negative, med
bidrag i prosentpoeng, ikke bare avkastning. En post som steg mye men veide lite
forklarer ingenting.

#fund-summary(funds)

== Hva vi gjorde

TODO: hver endring i kvartalet med begrunnelsen som ble gitt da beslutningen ble
tatt, ikke begrunnelsen som passer nå.

== Hva vi tror nå

TODO: hva vi venter oss og hva som må skje for at vi tar feil. Skriv det slik at
neste kvartals brev kan sjekke det.

== Hva vi tok feil om sist

TODO: forrige kvartals forventninger holdt opp mot hva som skjedde. Dette
avsnittet er grunnen til at brevet er verdt å lese.

#v(12pt)

Med vennlig hilsen,\
Forvaltningsgruppen
