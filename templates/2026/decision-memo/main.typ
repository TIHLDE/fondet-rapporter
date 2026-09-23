#import "/lib/doc.typ": note
#import "/lib/tables.typ": data-table, key-values

// Written before a trade, not after. The point is that the case can be checked
// against reality later, so keep the thesis falsifiable and dated.
#show: note.with(
  title: "Beslutningsnotat: TODO instrument",
  subtitle: "Skrevet av TODO. Til behandling DD.MM.YYYY.",
  year: "YYYY",
)

= Anbefaling

#key-values(
  (
    ([Handling], [Kjøp / øk / reduser / selg]),
    ([Størrelse], [TODO % av porteføljen]),
    ([Etter handel], [TODO % av porteføljen]),
    ([Tidshorisont], [TODO]),
    ([Finansieres av], [TODO]),
  ),
  headers: ([Punkt], [Forslag]),
)

= Hva dette er

TODO: to setninger om instrumentet, mandatet og markedet det henter avkastning fra.

= Tese

TODO: to eller tre påstander markedet ikke priser inn, og hvorfor de er sanne.
En tese uten en grunn til at andre tar feil er bare en beskrivelse.

+ *TODO påstand.* TODO begrunnelse med tall.
+ *TODO påstand.* TODO begrunnelse med tall.

= Verdsettelse

TODO: hvilken metode, hvilke forutsetninger, og hva prisen i dag impliserer.
Oppgi et intervall, ikke ett tall.

#data-table(
  ([Scenario], [Forutsetning], [Verdi], [Sannsynlighet]),
  (
    ([Nedside], [TODO], [TODO], [TODO %]),
    ([Basis], [TODO], [TODO], [TODO %]),
    ([Oppside], [TODO], [TODO], [TODO %]),
  ),
  align: (left, left, right, right),
)

= Katalysatorer

TODO: hendelser innen horisonten som kan lukke gapet mellom pris og verdi, med
dato der det finnes en.

= Risiko og mottiltak

#data-table(
  ([Risiko], [Effekt hvis den slår til], [Mottiltak]),
  (
    ([TODO], [TODO], [TODO]),
    ([TODO], [TODO], [TODO]),
  ),
)

= Hva gjør oss feil

TODO: de observerbare tegnene på at tesen er feil, og hva vi gjør da. Skriv dem
nå, mens vi ikke eier posisjonen.

= Beslutning

TODO: vedtak, dato, stemmer, og hvem som følger opp. Evalueres på nytt DD.MM.YYYY.
