#import "tihlde_front_template.typ": apply_template, TIHLDE_BLUE
#import "fund_section/fund_section.typ": fund, fund_facts, fund_returns, return_period, fund_risk_metrics, risk_metric, fund_section
#import "fund_section/funds.typ": funds

#set text(font: "Roboto", size: 10pt)
#show link: underline
#set par(leading: 1.4em, spacing: 2em)
#show heading: set block(below: 18pt, above: 24pt)
#set text(lang: "nb")

#let TIHLDE-blue = rgb(28, 69, 138)

#let report_title = "Kvartalsrapport QX YYYY"
#let report_month_year = "MM YYYY"

#apply_template(
  paper_name: report_title,
  month_year: report_month_year,
  year: "YYYY",
)
2
// gjorde === litt bittelitt større fordi det så bedre ut 
#show heading.where(level: 3): set text(size: 	1.1em)

#pagebreak()

#set page( 
  header: [
    \
    #place(left, image("/assets/liten-blaa.png", height: 0.7cm))
    #place(right, move(dy: 5pt, text(report_title)))
    #place(move(dy: 25pt, line(length: 100%, stroke: (paint: TIHLDE-blue, thickness: 3pt))))
  ],
  footer: context [
    #place(move(dy: -10pt, line(length: 100%, stroke: (paint: TIHLDE-blue, thickness: 3pt))))
    #place(left, "2025")
    #place(center, counter(page).display("1/1", both: true))
    #place(right, "Forvaltningsgruppen")
  ],
  margin: (
    x: 50pt,
    top: 0.75in,
    bottom: 50pt
  ),
  header-ascent: 36pt,
  footer-descent: 30pt,
)

#outline()


\ \ \ \ \ \
// \section{...} blir = ...
= 1. Om fondet

// \subsection{...} blir == ...
== 1.1 Forvaltningsgruppens ansvar
Forvaltningsgruppen har som overordnet visjon å sikre fremtidig økonomisk trygghet for TIHLDE, samt balansere dette med dagens behov i linjeforeningen. Dette vil oppnås gjennom fornuftig allokering av de økonomiske midlene som er tilgjengelig, uten at de eksponeres mot unødvendig stor risiko. Forvaltningsgruppen har som ansvar å forvalte ressursene for linjeforeningens beste, for fremtiden og for i dag.
\
\
Les mer om TIHLDE-Fondet, og Forvaltningsgruppen sin overordnede strategi på #link("https://fondet.tihlde.org/")[fondet.tihlde.org]
\
= 2. Status Forvaltningsgruppen

== 2.1 Kvartalet som har gått

=== Kort sammendrag

=== Hva gikk bra
 
=== Hva gikk dårlig

=== Konsekvenser/tiltak for QX+1 YYYY

=== Neste kvartal

=== Læring og beslutninger

== 2.2 Scorecard QX


#align(center,
  table(
    columns: (auto, auto),
    align: (left, right),
    stroke: (top: 0.5pt, bottom: 0.5pt), 
    [*Måling*], [*Status*], 
    "Totalavkastning QX", "3,48 %",
    "Relativ til OSEBX (QX)", "0,46%",
    "Hittil i år (1.7-30.9)", "5,26%",
    "Relativ YTD vs. OSEBX", "15,4%",
    "Kostnader", "470 NOK. For høye i enkelte fond - er i en omjusteringsperiode",
  )
)

\
== 2.3 Medlemmer

#set heading(outlined: false) // Gjelder kun denne overskriften
=== Forvalter
#let row(name, study, age) = grid(
  columns: (1fr, 1.5fr, auto),
  gutter: 1em,
  [
    #name
  ],
  [
    #study
  ],
  [
    #age år
  ],
)

#row("Martine Løkstad", "Digital infrastruktur og cybersikkerhet, 2. klasse", "23")
#line(length: 100%, stroke: (paint: TIHLDE-blue, thickness: 1pt))
=== Nestleder
#row("Kasper Johansen Sandø", "Digital forretningsutvikling, 2. klasse", "19")

=== Analytikere
// \begin{itemize} blir en liste med -
#row("Christian Douglas Farnes Fancy", "Digital transformasjon, 1. klasse", "24")
#row("Edvard Emmanuel Klavenes", "Dataingeniør, 2. klasse", "22")
#row("Kaja Sætherhaug Dalåmo", "Digital forretningsutvikling, 1. klasse", "20")
#row("Kristoffer Langva Qvenild", "Dataingeniør, 1. klasse", "19")
#row("Nina Elise Kåshagen", "Digital infrastruktur og cybersikkerhet, 2. klasse", "19")
#row("Oskar Børnick Tveit", "Digital forretningsutvikling, 1. klasse", "21")
#row("Sigurd Evensen", "Dataingeniør, 1. klasse & Økonomi, årsstudium", "18")
#row("Tri Tâc Lê", "Dataingeniør, 2. klasse", "21")
#row("Thomas Thiên Nguyễn", "Økonomi og administrasjon, 5. klasse & Digital forretningsutvikling, 3. klasse", "25")
#line(length: 100%, stroke: (paint: TIHLDE-blue, thickness: 1pt))

=== Den Eldste
#row("Trygve Jørgensen", "Datateknologi, master", "23")
\
#set heading(outlined: true) // Gjelder kun denne overskriften
= 3.  Porteføljestatus

// \textit{...} blir _..._
_"Målet til fondet er ikke å slå markedet men å ha en trygg positiv avkastning i en lang periode."_

#for fund_data in funds [
  #fund_section(fund_data)
]

= 4. Økonomi QX - Retrospekt

== Finansiell oversikt


// \begin{tabular}{@{}lrr@{}} ... \end{tabular}
#table(
  columns: (auto, auto, auto),
  align: (left, right, right),
  stroke: (top: 0.5pt, bottom: 0.5pt),
  [], [*QX YYYY*], [*QX YYYY - 1*], // Tom celle for å justere headere
  "Forvaltningskapital ved kvartalsstart", "xNOK", "---",
  "Investeringsresultat i perioden", "+-xNOK", "---",
  "Forvaltningskapital ved kvartalsslutt", "xNOK", "---",
  "Bruttoavkastning (kvartal)", "x%", "---",
  "Nettoavkastning (etter kostnader - honorar)", "+3,36 %", "---",
  "Kontantandel per kvartalsslutt", "1,51 % (6000,12 kr)", "---",
)

== Drivere

== Kostnadsbilde

== Prognosejustering

== Tiltak 



#set text(size: 8pt)

#v(50pt)
#align(center)[
  _Dette er tanker Forvaltningsgruppen har angående økonomi og burde ikke tolkes som finansielle råd._
]
