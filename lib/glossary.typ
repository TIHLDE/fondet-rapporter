#import "theme.typ"

// Glossary of the terms the fund reports use. Content only, no layout
// decisions beyond the card, so it can be dropped into any report.

#let terms = (
  ("Alfa", [Meravkastning utover referanseindeks gitt samme risiko.]),
  ("Beta", [Følsomhet mot markedsbevegelse. 1.0 betyr likt med markedet.]),
  ("Forklaringsgrad (R²)", [Andel av avkastning som forklares av referanseindeksen.]),
  ("Tracking error", [Standardavviket til meravkastningen mot referanse.]),
  ("Tracking difference", [Snittet av meravkastning mot referanse over tid.]),
  ("Standardavvik", [Måler spredning i avkastning. Høyere tall betyr mer svingning.]),
  ("Volatilitet", [Praktisk brukt som standardavvik i prosent per år.]),
  ("Sharpe-ratio", [Meravkastning delt på standardavvik. Risikojustert avkastning.]),
  ("Sortino-ratio", [Meravkastning delt på nedsidevolatilitet. Straffer bare tap.]),
  ("Maksimalt drawdown", [Største topp-til-bunn fall i perioden.]),
  ("CAGR", [Sammensatt årlig vekstrate. Geometrisk gjennomsnitt.]),
  ("NAV", [Verdien per andel i et fond etter kostnader.]),
  ("Forvaltningshonorar", [Årlig prosentvis kostnad som tilfaller forvalter.]),
  ("Totalpris (TER)", [Sum av løpende kostnader i fondet pr. år.]),
  ("Kurtasje", [Transaksjonskostnad ved kjøp eller salg.]),
  ("Eksponering", [Andel av kapital allokert mot et marked, sektor eller risiko.]),
  ("Netto eksponering", [Lang eksponering minus kort eksponering. For fond som kan shorte.]),
  ("Allokering", [Fordeling av kapital mellom aktivaklasser, regioner eller faktorer.]),
  ("Overvekt/undervekt", [Vekt over eller under referansevekten.]),
  ("Rebalansering", [Justerer vekter tilbake til målsammensetning.]),
  ("Diversifisering", [Spre risiko ved å kombinere lavt korrelerte investeringer.]),
  ("Korrelasjon", [Samsvar i bevegelser mellom to aktiva. −1 til +1.]),
  ("Idiosynkratisk risiko", [Selskaps-spesifikk risiko som kan diversifiseres bort.]),
  ("Markedsrisiko", [Systematisk risiko som ikke kan diversifiseres bort.]),
  ("Likviditet", [Hvor lett det er å handle uten stor prisendring.]),
  ("Spread", [Forskjellen mellom kjøps- og salgspris eller mellom to renter.]),
  ("Sektorrotasjon", [Kapital flyttes mellom sektorer etter syklus/tema.]),
  ("Temaeksponering", [Målrettet eksponering mot trend som AI, helse, grønt.]),
  ("Faktor", [Systematisk egenskap som verdi, størrelse, momentum eller kvalitet.]),
  ("Momentum", [Aksjer som har steget mest har tendens til å fortsette kortsiktig.]),
  ("Value (verdi)", [Billige selskaper relativt til inntjening/bok.]),
  ("Growth (vekst)", [Selskaper med høy forventet vekst i inntekter/inntjening.]),
  ("Utbytteyield", [Årlig utbytte delt på aksjekurs.]),
  ("P/E", [Pris delt på inntjening per aksje. Enkel verdsettelsesmåling.]),
  ("P/B", [Pris delt på bokført egenkapital per aksje.]),
  ("SFDR artikkel 6/8/9", [EU-klassifisering: 6 uten bærekraftmål, 8 fremmer E/S, 9 har bærekraftmål.]),
  ("ESG", [Miljø, sosiale forhold og eierstyring integrert i forvaltning.]),
  ("Eksklusjon", [Utelukker visse aktiviteter, f.eks. kull, tobakk, våpen.]),
  ("Valutasikring", [Reduserer valutarisiko via derivater.]),
  ("Valutaeffekt", [Bidrag fra endringer i kronekurs mot fondets basisvaluta.]),
  ("Small/Mid/Large cap", [Klassifisering etter markedsverdi. Små, mellomstore og store selskaper.]),
  ("Indeksnært", [Forvaltning med lavt avvik fra referanseindeks.]),
  ("Aktiv andel", [Hvor mye porteføljen avviker fra referansevektene. 0–100 %.]),
  ("Kredittrisiko", [Sannsynlighet for mislighold i rentepapirer.]),
)

#let _card(name, definition) = block(below: 12pt, width: 100%, inset: (x: 14pt, y: 12pt), radius: 10pt, stroke: 0.9pt + theme.blue)[
  #grid(
    columns: (auto, 1fr),
    gutter: 10pt,
    box(width: 28pt, height: 28pt, radius: 14pt, fill: theme.blue)[
      #align(center + horizon)[
        #text(size: 11pt, weight: "bold", fill: white)[#upper(name).first()]
      ]
    ],
    [
      #text(size: 12pt, weight: "bold", fill: theme.blue)[#name]
      #v(3pt)
      #text(size: 10.5pt)[#definition]
    ],
  )
]

#let glossary(title: "Begrepsliste", entries: terms) = [
  #align(center)[
    #image("/assets/Logo-blaa-transparent.png", height: 90pt)
    #v(-10pt)
    #text(size: 30pt, weight: "bold", fill: theme.blue)[#title]
    #v(-6pt)
    #line(length: 60%, stroke: 1pt + theme.blue)
    #v(12pt)
  ]

  #columns(2, gutter: 12pt)[
    #for (name, definition) in entries [
      #_card(name, definition)
    ]
  ]
]
