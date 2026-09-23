#import "/lib/doc.typ": note
#import "/lib/tables.typ": data-table
#import "/lib/funds.typ": fund-section
#import "fund.typ": funds

// Deep dive on a single fund. The standard tables first, then the parts that
// need judgement: what the fund is actually exposed to, what it costs to own,
// what would make us sell it.
#show: note.with(
  title: "Fondsnotat: TODO fondsnavn",
  subtitle: "Skrevet av TODO. Tall per DD.MM.YYYY.",
  year: "YYYY",
)

= Konklusjon

TODO: en setning. Beholdes, økes, reduseres eller selges, og hvorfor.

#fund-section(funds.at(0))

= Eksponering

TODO: hva fondet faktisk eier. Sektorer, land, valuta og de ti største postene.
Hvor konsentrert er det, og hvilke enkeltposter avgjør resultatet.

#data-table(
  ([Eksponering], [Fondet], [Referanseindeks], [Differanse]),
  (
    ([Største sektor], [TODO], [TODO], [TODO]),
    ([Nest største sektor], [TODO], [TODO], [TODO]),
    ([Topp 10 poster], [TODO %], [TODO %], [TODO]),
    ([Valuta uten sikring], [TODO %], [TODO %], [TODO]),
  ),
  align: (left, right, right, right),
)

= Drivere i perioden

TODO: hva forklarer avkastningen. Skill mellom markedet, sektorvalg,
enkeltposter og valuta. Tall, ikke adjektiver.

= Kostnad mot nytte

TODO: forvaltningshonorar og totalpris mot meravkastning etter kostnader. Et
aktivt fond må tjene inn honoraret sitt over tid; vis om det gjør det.

= Risiko

TODO: de tre tingene som kan slå feil, og hvor mye hver av dem koster oss.

= Hva ville endret konklusjonen

TODO: konkrete og etterprøvbare kriterier. Tre kvartaler under indeks, honorar
over X, eller at mandatet endres.
