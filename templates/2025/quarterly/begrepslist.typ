#let TIHLDE_blue = rgb(28, 69, 138)

#align(center)[
  #image("/assets/Logo-blaa-transparent.png", height: 90pt)
  #v(-10pt)
  #text(size: 30pt, weight: "bold", fill: TIHLDE_blue)[Begrepsliste]
  #v(-6pt)
  #line(length: 60%, stroke: (paint: TIHLDE_blue, thickness: 1pt))
  #v(12pt)
]

// 
#let term(navn, definisjon) = block(below: 12pt)[ 
    #box(
      width: 100%,           
      inset: (x: 14pt, y: 12pt),
      radius: 10pt,
      fill: white,
      stroke: (paint: TIHLDE_blue, thickness: 0.9pt),
    )[
      #grid(columns: (auto, 1fr), gutter: 10pt, [
        #box(width: 28pt, height: 28pt, radius: 14pt, fill: TIHLDE_blue)[
          #align(center + horizon)[
            #text(size: 11pt, weight: "bold", fill: white)[#upper(navn).first()]
          ]
        ]
      ], [
        #text(size: 12pt, weight: "bold", fill: TIHLDE_blue)[#navn]
        #v(3pt)
        #text(size: 10.5pt)[#definisjon]
      ])
    ]
  ]

#columns(2, gutter: 12pt)[
  #term("Alfa", [Meravkastning utover referanseindeks gitt samme risiko.])
  #term("Beta", [Følsomhet mot markedsbevegelse. 1.0 betyr likt med markedet.])
  #term("Forklaringsgrad (R²)", [Andel av avkastning som forklares av referanseindeksen.])
  #term("Tracking error", [Standardavviket til meravkastningen mot referanse.])
  #term("Tracking difference", [Snittet av meravkastning mot referanse over tid.])

  #term("Standardavvik", [Måler spredning i avkastning. Høyere tall betyr mer svingning.])
  #term("Volatilitet", [Praktisk brukt som standardavvik i prosent per år.])
  #term("Sharpe-ratio", [Meravkastning delt på standardavvik. Risikojustert avkastning.])
  #term("Sortino-ratio", [Meravkastning delt på nedsidevolatilitet. Straffer bare tap.])
  #term("Maksimalt drawdown", [Største topp-til-bunn fall i perioden.])

  #term("CAGR", [Sammensatt årlig vekstrate. Geometrisk gjennomsnitt.])
  #term("NAV", [Verdien per andel i et fond etter kostnader.])
  #term("Forvaltningshonorar", [Årlig prosentvis kostnad som tilfaller forvalter.])
  #term("Totalpris (TER)", [Sum av løpende kostnader i fondet pr. år.])
  #term("Kurtasje", [Transaksjonskostnad ved kjøp eller salg.])

  #term("Eksponering", [Andel av kapital allokert mot et marked, sektor eller risiko.])
  #term("Netto eksponering", [Lang eksponering minus kort eksponering. For fond som kan shorte.])
  #term("Allokering", [Fordeling av kapital mellom aktivaklasser, regioner eller faktorer.])
  #term("Overvekt/undervekt", [Vekt over eller under referansevekten.])
  #term("Rebalansering", [Justerer vekter tilbake til målsammensetning.])

  #term("Diversifisering", [Spre risiko ved å kombinere lavt korrelerte investeringer.])
  #term("Korrelasjon", [Samsvar i bevegelser mellom to aktiva. −1 til +1.])
  #term("Idiosynkratisk risiko", [Selskaps-spesifikk risiko som kan diversifiseres bort.])
  #term("Markedsrisiko", [Systematisk risiko som ikke kan diversifiseres bort.])
  #term("Likviditet", [Hvor lett det er å handle uten stor prisendring.])

  #term("Spread", [Forskjellen mellom kjøps- og salgspris eller mellom to renter.])
  #term("Sektorrotasjon", [Kapital flyttes mellom sektorer etter syklus/tema.])
  #term("Temaeksponering", [Målrettet eksponering mot trend som AI, helse, grønt.])
  #term("Faktor", [Systematisk egenskap som verdi, størrelse, momentum eller kvalitet.])
  #term("Momentum", [Aksjer som har steget mest har tendens til å fortsette kortsiktig.])

  #term("Value (verdi)", [Billige selskaper relativt til inntjening/bok.])
  #term("Growth (vekst)", [Selskaper med høy forventet vekst i inntekter/inntjening.])
  #term("Utbytteyield", [Årlig utbytte delt på aksjekurs.])
  #term("P/E", [Pris delt på inntjening per aksje. Enkel verdsettelsesmåling.])
  #term("P/B", [Pris delt på bokført egenkapital per aksje.])

  #term("SFDR artikkel 6/8/9", [EU-klassifisering: 6 uten bærekraftmål, 8 fremmer E/S, 9 har bærekraftmål.])
  #term("ESG", [Miljø, sosiale forhold og eierstyring integrert i forvaltning.])
  #term("Eksklusjon", [Utelukker visse aktiviteter, f.eks. kull, tobakk, våpen.])
  #term("Valutasikring", [Reduserer valutarisiko via derivater.])
  #term("Valutaeffekt", [Bidrag fra endringer i kronekurs mot fondets basisvaluta.])

  #term("Small/Mid/Large cap", [Klassifisering etter markedsverdi. Små, mellomstore og store selskaper.])
  #term("Indeksnært", [Forvaltning med lavt avvik fra referanseindeks.])
  #term("Aktiv andel", [Hvor mye porteføljen avviker fra referansevektene. 0–100 %.])
  #term("Kredittrisiko", [Sannsynlighet for mislighold i rentepapirer.])
]
