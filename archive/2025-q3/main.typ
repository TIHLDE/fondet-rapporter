#set text(font: "Roboto", size: 10pt)
#show link: underline
#set par(leading: 1.4em, spacing: 2em)
#show heading: set block(below: 18pt, above: 24pt)
#set text(lang: "nb")

#let TIHLDE-blue = rgb(28, 69, 138)
#let paperName = "Kvartalsrapport Q3 2025"

// Ny forside, kan fjernes hvis den er støgg
#align(center)[
  #v(6%)
  #line(length: 85%, stroke: (paint: TIHLDE-blue, thickness: 1pt))
  #v(0pt)

  #block(
    width: 90%,
    inset: 22pt, // padding
    radius: 6pt,              
    stroke: (paint: TIHLDE-blue, thickness: 1.5pt)
  )[
    #align(center)[
      #image("/assets/liten-blaa.png", height: 8cm)
      #v(0pt)
      #text(size: 3em, weight: "bold")[#paperName]
      #v(-40pt)
      // #text(size: 1.25em, weight: "semibold", fill: TIHLDE-blue)[Forvaltningsgruppen]
      #image("/assets/Logo-blaa-transparent.png", width: 8cm)
      #v(6pt)
      #line(length: 40%, stroke: (paint: TIHLDE-blue, thickness: 1.2pt))
      #v(0pt)
      #text(size: 1.05em, weight: "medium")[Sept 2025]
    ]
  ]
  #v(12pt)
  
  #line(length: 60%, stroke: (paint: TIHLDE-blue, thickness: 1pt))
]

/* Gamle forside, kommentert ut
#align(center)[
  #v(20%) // Vertikal plass
  #image("/assets/liten-blaa.png", height: 5.0cm)
  #v(12pt)
  #text(size: 2.5em, weight: "bold", "Kvartalsrapport Q3 2025")
  #v(12pt)
  #text(size: 1.5em, weight: "bold", "Forvaltningsgruppen")
  #v(12pt)
  #text(size: 1.2em, weight: "bold", "Sept 2025")
 ]*/
 
// gjorde === litt bittelitt større fordi det så bedre ut lol
#show heading.where(level: 3): set text(size: 	1.1em)

#pagebreak()

#set page( 
  header: [
    \
    #place(left, image("/assets/liten-blaa.png", height: 0.7cm))
    #place(right, move(dy: 5pt, text(paperName)))
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
- Porteføljen hadde positiv utvikling i Q3, drevet av USA og globale small cap.
- Europa og Danmark trakk ned avkastningen, særlig grunnet sterkere NOK og svak utvikling i flere storposter.
- Teknologi og AI bidro sterkt – både i indeksfondene og vekstfondene – men underprestasjon mot referanse skyldtes smal sektorrotasjon.
- Risikoen er fortsatt moderat og fondene følger sine referanser tett, med unntak av aktive fond (Fondsfinans, DNB Finans) som leverte solid risikokorrigert avkastning.

// \paragraph{...} blir ==== ...
=== Hva gikk bra
+ *Sterke bidrag fra USA og teknologi*
    - Nordnet USA Indeks: +9.1% ref. 10.19%
      - Vinnere: NIVIDIA, Apple, Microsoft, Tesla
      - AI-markedet fortsetter å drive inntjening og sentiment
+  *Small cap hentet seg inn*
 - KLP Global Small Cap: +7,36 %, ref. 7,9 %
    - Positiv valutabidrag: +1 til +1,5 prosentpoeng
    - Økt eksponering i teknologi og helse
+ *Sverige flater ut og leverer stabilt*
 - Nordnet Sverige Indeks: ~+4,2 %, på linje med indeks
  - Bidrag fra industri og finans (Volvo, Atlas Copco, Investor, SEB)
+ *To aktive fond leverer god risikokorrigert avkastning*
 - Fondsfinans Utbytte B: +2,25 % (ref. 2,26%) – svært lavt svingnivå, Sharpe 2,20
 - DNB Finans A: +4,51 %, år-til-dato 27,82 %

=== Hva gikk dårlig
+ *Europa underpresterte*
  - KLP AksjeEuropa Indeks: +1,55 %, ref. 3,03 %
   - Hovedårsak: sterk NOK, svakhet i verktøy/eiendom
+ *Danmark går negativt*
  - Nordnet Danmark Indeks: –2,77 %, men fortsatt bedre enn indeks (–4,85 %)
   - Svake poster: Novo Nordisk og DSV
+ *Global vekst/teknologi hang etter referanse*
 - Öhman Global Growth: +7,07 %, men ref. 12,87 %
  - Høy vekting mot AI var bra, men svakere utvikling i Workday, Alibaba og enkelte fornybarposisjoner

=== Konsekvenser/tiltak for Q4 2025

#block[
  #set par(leading: 0.6em, spacing: 0pt)
  #table(
    columns: (auto, auto, auto),
    [*Plan*], [*Resultat*], [*Årsak*],
    [Stabil, moderat risiko],
    [Totalavkastning positiv, men Europa/Danmark trakk ned],
    [Sterk NOK og svak utvikling i DSV og Novo Nordisk],
    [God diversifisering],
    [Sverige og USA balanserte nedgangen],
    [Industri/finans bidro positivt],
    [Langsiktig verdivekst],
    [Teknologi og global small cap leverte sterkt],
    [AI og svak NOK mot USD/EUR/JYP],
  )
]

=== Neste kvartal

#list(
  [*Reduserer eksponering:*  
   Full avvikling av Nordnet Danmark Indeks B og Öhman Global Growth.  
   Grunnet svak utvikling, høy enkeltselskapsrisiko og lav forklaringsgrad (Danmark), samt vedvarende underprestasjon mot referanse (Öhman).],

  [*Øker eksponering:*  
   Kapital flyttes til fond med bred eksponering mot fremvoksende markeder.  
   Mål: høyere langsiktig vekstpotensial og bedre geografisk diversifisering med moderat risiko.],

  [*Viderefører posisjoner:*  
   Fondsfinans Utbytte og DNB Finans beholdes – god risikokorrigert avkastning og lav volatilitet.  
   Nordnet USA, Sverige og KLP Global Small Cap beholdes som kjerne.],

  [*Risiko og forventet effekt:*  
   Overgangen reduserer avhengighet av Europa og danske enkeltaksjer, samtidig som porteføljen får økt eksponering mot strukturell vekst i Asia, Latin-Amerika og frontier markets.]
)
=== Læring og beslutninger

#list(
  [*Valuta betyr mer:* Ikke-hedgede posisjoner blir sårbare ved NOK-styrking.],
  [*Tech-ledet rally fortsetter:* Økt vekt i AI og software, redusert industri.],
  [*Small cap tilbake:* Attraktiv prising og positiv valuta gir oppside.],
  [*Diversifisering:* Lav forklaringsgrad i Danmark viser behov for bedre spredning av enkeltselskapsrisiko.]
)



// \subsection*{...} blir == [Overskrift] #set heading(outlined: false)
== 2.2 Scorecard Q3


// \begin{center}\begin{tabular}...\end{tabular}\end{center}
#align(center,
  table(
    columns: (auto, auto),
    align: (left, right),
    stroke: (top: 0.5pt, bottom: 0.5pt), // Erstatter \hline
    [*Måling*], [*Status*], // Stjernene lager fet skrift (header row)
    "Totalavkastning Q3", "3,48 %",
    "Relativ til OSEBX (Q3)", "0,46%",
    "Hittil i år (1.7-30.9)", "5,26%",
    "Relativ YTD vs. OSEBX", "15,4%",
    "Kostnader", "470 NOK. For høye i enkelte fond - er i en omjusteringsperiode",
  )
)

\
== 2.3 Medlemmer

// \subsubsection*{...} blir === [Overskrift] #set heading(level: 3, outlined: false)
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

== Nordnet USA Indeks - 19.38%
Nordnet USA Indeks er et indeksfond med mål å representere de store og mellomstore verdipapirene i USA. Referanseindeks: MSCI USA Climate Change Index. Avkastning Q3 2025: #text(weight: 500)[9,1%] mot referanseindeks #text(weight: 500)[10,19%] (NAV fra 214,17 ved 1. Juli til 233,66 ved 30. September). År-til-dato: #text(weight: 500)[1,67%]. Siden oppstart: #text(weight: 500)[136,78%]

Hoveddrivere: NVIDIA (7.64%), Apple (6.42%), MSFT (5.97%), TESLA (5.62%) - Tungt vektet i teknologi, hvorav 9 av topp 10 er teknologi, derav siste er biotek. Totalt er teknologi på 41.69% av eksponeringen. Dette kan anses som risikofylt, men AI-kappløpet virker ikke til å sakke ned; allerede i oktober har flere store AI-kontrakter blitt skrevet hvorav selskaper som NVIDIA er langt fremme i kappløpet. Dersom de store driverne som NVIDIA, Apple og Microsoft fortsetter å holde tritt i kappløpet ser vi liten grunn til at indeksen ikke skal ha oppside for Q4. \
#set par(leading: 1em, spacing: 1em) //teit fiks for å få standardavvik på samme side, flytter også risiko nærmere tabellen som ser nice ut
*Viktige nøkkeltall:*  
#table(
  columns: (auto, auto, auto, auto),
  align: (left, right, right),
  stroke: (top: 0.5pt, bottom: 0.5pt),
  [*Data*], [*For 1 år*], [*For 3 år*], [*For 5 år*], // Tom celle for å justere headere
  "Alfa", "−1,32", "0,14", "0,85",
  "Beta", "0,98", "1,00", "1,00",
  "Forklaringsgrad (R²)", "98,26", "98,49", "98,33",
  "Sharpe-ratio", "0,34", "0,93", "1,03",
  "Standardavvik", "19,69", "15,96", "15,17"
)

#set par(leading: 1.4em, spacing: 2em)
Foreløpig er fondet et artikkel 8 fond som vil si at det er et fond som fremmer miljømessige eller sosiale egenskaper, men ikke har bærekraft som hovedmål. Fondet har en totalpris på 0.19% årlig og er blant de billigste indeksfondene som Nordnet tilbyr. 

== KLP AksjeGlobal Small Cap Indeks P - 13.67%
I Q3 gikk KLP AksjeGlobal Small Cap Indeks N bra fordi fondet har en avkastning på 7,36%, som er en økning på 1% fra Q3 i fjor.

UCITS fondet KLP AksjeGlobal Small Cap Indeks N er et globalt, små/mellomstore-selskap fond med mål om å få en tilnærmet lik avkastning som referanseindeksen MSCI World Small Cap Index NOK. Avkastning Q3 2025: 7,36 %, mot referanseindeks 7,9 %. År-til-dato: 1,80 %. Siden oppstart: 10,22 % p.a (CAGR). Hoveddrivere: industri, finans og teknologi. Svakeste bidrag: kommunikasjon og verktøy. Risiko: volatilitet 16,02 %, tracking error 0,21 %, netto eksponering 99,9%. 
#set par(leading: 1em, spacing: 1em) //teit fiks for å få standardavvik på samme side, flytter også risiko nærmere tabellen som ser nice ut
*Viktige nøkkeltall:* 
#table(
  columns: (auto, auto),
  align: (left, right),
  stroke: (top: 0.5pt, bottom: 0.5pt),
  [*Data*], [*For 1 år*],
  "Alfa", "1,53",
  "Beta", "1,07",
  "Forklaringsgrad (R²)", "97,87",
  "Sharpe-ratio", "0,23",
  "Standardavvik", "18,83"
)
#set par(leading: 1.4em, spacing: 2em)
Viktige porteføljeendringer: Økt eierandel i teknologi og helse, mens eierandelen har minket smått i industri og finans. Valutaeffekt: Svakere norsk krone mot USD, EUR og JPY bidro positivt til avkastningen i kvartalet, med anslagsvis +1 % til +1,5 prosentpoeng. Bærekraft: Fondet følger KLPs retningslinjer for ansvarlige investeringer, med ekskludering av blant annet kull, tobakk og våpen. Ingen vesentlige ESG-hendelser i kvartalet.. Kostnader: forvaltningshonorar 0,25 % p.a. Utsikter neste kvartal: Fondet er indeksnært og vil følge utviklingen i globale småselskaper. Verdsettelsene fremstår som attraktive etter svak utvikling tidligere i året. Hovedrisikoer er sterkere norsk krone og vedvarende høye renter som kan dempe risikoviljen.

== KLP AksjeEuropa Indeks N - 15.35%
I Q3 gikk KLP AksjeEuropa Indeks N dårligere i år fordi fondet har en nedgang på - 3,80% fra Q3 i fjor.

KLP AksjeEuropa Indeks N er et europeisk verdipapirfond med mål om å oppnå en avkastning tilnærmet lik fondets referanseindeks, MSCI Europe Indeks. Avkastning Q3 2025: 1,55%, mot referanseindeks 3,03%. År-til-dato: 11,43%.

Siden oppstart: 9,37% p.a (CAGR). Hoveddrivere: finans, industri og helse. Svakeste bidrag: verktøy og eiendom. Risiko (3 år): volatilitet 11,54%, tracking error 0,98%, netto eksponering \~99-100%.
#set par(leading: 1em, spacing: 1em) //teit fiks for å få standardavvik på samme side, flytter også risiko nærmere tabellen som ser nice ut
*Viktige nøkkeltall:* 
#table(
  columns: (auto, auto, auto, auto),
  align: (left, right, right),
  stroke: (top: 0.5pt, bottom: 0.5pt),
  [*Data*], [*For 1 år*], [*For 3 år*], [*For 5 år*],
  "Alfa", "−0,77", "−0,05", "−0,41",
  "Beta", "1,03", "1,01", "0,99",
  "Forklaringsgrad (R²)", "99,27", "99,28", "99,4",
  "Sharpe-ratio", "0,37", "1,12", "0,87",
  "Standardavvik", "11,32", "11,54", "12,69"
)

#set par(leading: 1.4em, spacing: 2em)
Viktige porteføljeendringer: indeksnær forvaltning, kun fulgt endringer til MSCI Europe Indeks. Valutaeffekt: Fondet er ikke valutasikret, dermed ble avkastningen svekket da NOK styrket seg mot Euro.

Bærekraft: Fondet følger KLP Bærekraftrettningslinjer og er klassifisert under artikkel 8 i EU’s bærekraftregelverk (SFDR), som vil si at fondet “fremmer miljørelaterte eller sosiale egenskaper” og integrerer bærekraftsrisiko, men har ikke som hovedmål å investere i “bærekraftige” investeringer. Kostnader: forvaltningshonorar 0,25%. Utsikter neste kvartal: Fondet er posisjonert bredt mot europeiske large-cap-selskaper som kan dra nytte av stabilisering i renter og fortsatt moderat økonomisk vekst. Nøkkelrisikoer er svekket etterspørsel i eksportsektoren og mulig volatilitet i valutamarkedene dersom renteutsiktene i eurosonen endres.

== Nordnet Sverige Index - 16.58%
// \(\sim\!+4,2\%\) blir $approx +4,2 %$
I Q3 2025 gikk Nordnet Sverige Index bra, i takt med det svenske markedet; $approx +4,2 %$ (kalender-Q3, proxiert med OMXSBGI), omtrent på linje med referanseindeksen.

Nordnet Sverige Index er et Sverigefond med mål om å speile OMX Stockholm Benchmark ESG Responsible Gross Index (OMXSBESGGI). Avkastning Q3 2025: $approx 4,2 %$, mot referanseindeks $approx 4,2 %$. År-til-dato: $approx 4,6 %$. Hoveddrivere: industri (Volvo, Atlas Copco) og finans (Investor, SEB). Risiko: volatilitet (3 år) $15,05 %$, tracking error $approx 0,04 %$ (siste 24 mnd), netto eksponering $approx 99$–$100 %$. 

// Viktige nøkkeltall (3 år): alfa $-0,72$, beta $1,00$, Sharpe $0,63$, standardavvik $15,05 %$, $R^2 = 97,56$. // Kommentert ut da tallene viser i tabellen - TRi

#table(
  columns: (auto, auto, auto, auto),
  align: (left, right, right),
  stroke: (top: 0.5pt, bottom: 0.5pt),
  [*Data*], [*For 1 år*], [*For 3 år*], [*For 5 år*],
  "Alfa", "−1,47", "−0,13", "−0,46",
  "Beta", "1,02", "1,02", "1,03",
  "Forklaringsgrad (R²)", "96,53", "97", "97,93",
  "Sharpe-ratio", "−0,23", "0,85", "0,47",
  "Standardavvik", "13,3", "13,38", "17,15"
)


Viktige endringer: indeksnær forvaltning, ingen strukturelle skift. Valutaeffekt: marginal (SEK-basis, overveiende svenske selskaper). Bærekraft: følger OMXSBESGGI-kriterier. Kostnader: forvaltningshonorar $0,19 %$. Utsikter: posisjonert for bred svensk oppgang; nøkkelrisikoer er global vekstbrems og høyere renter.

== Nordnet Danmark Indeks B - 11.53%
I Q3 falt Nordnet Danmark Indeks B etter svak utvikling i flere av de største posisjonene. Nedgangen var likevel mindre enn året før: −2,77 % i Q3 2025 mot −7,36 % i Q3 2024.

Nordnet Danmark Indeks B er et indeksfond med mål om å gjenskape aksjeindeksen OMX Copenhagen 25 ESG Responsible Gross Index. Avkastning Q3 2025: -2,77% mot referanseindeks -4,85%. År-til-dato: -6.31%. Siden oppstart 5.6% p. a. (CAGR). Hoveddrive: Industri, helsevern, finans. Svakeste bidrag:  Novo Nordisk B, DSV.  Risiko: volatilitet 13,9%, tracking error 0,1%, netto eksponering 100%. 

Viktige nøkkeltall: alpha 4,86%, beta 0,43, sharpe ratio 0,37, standardavvik 14,09%, r² 49,83. 

Viktige porteføljeendringer: økt i Vestas Wind System og Coloplast, redusert i Novo Nordisk og Ørsted. Valutaeffekt: 1 - 1.5% prosentpoeng grunnet økning i DKK i forhold til NOK. Bærekraft: ekskluderer våpen, tobakk, kull. Kostnader: forvaltningshonorar 0,19%. Flere muligheter i helse- og industrisektoren, hvor selskaper som Novo Nordisk og Vestas fortsetter å vise solid inntjening og strukturell vekst. Hovedrisiko: vedvarende høy inflasjon og svak global etterspørsel.

== Öhman Global Growth A - 5.4%
I Q3 gikk Ohman Global Growth A bra, etter den store fortsettende veksten 
av AI-markedet. Fondet har en økning på 7.07%, sammenliknet med fjor årets
-2.11%.

Ohman Gobal Growth A er et globalt aksjefond med mål om høyest muligavkastning gitt fondets investeringsprofil. Den ligger under indeksen Morningstar Gbl Tech NR USD. Avkastning Q3 2025: 7.07%, mot indeksen sin 12.87%. År til dato: 3.94%. Aksjefondet er teknologirettet, med en andel på 41% innenfor teknologi. Andre store bransjer inneholder helsevern, konsumentvarer og industri. Største bidrag har vært oppgangen i teknologi og spesielt AI-investeringer. Risikoen i porteføljen har vært moderat, og fondet har opprettholdt høy markedseksponering. Risiko: Volatilitet 17,3 %, tracking error 5.4%, netto eksponering 100 %. 

Viktige nøkkeltall: Alpha -4,7%, beta 0,80, Sharpe ratio 1,03, standardavvik 17,3 %, $R^2$ 0,76. 

Viktige porteføljeendringer: økt i ServiceNow, redusert i Workday, gevinstsikret i Alibaba, nVent og Alpha-bet. Kostnader: forvaltningshonorar 1,23%. Vi ser flere muligheter innen AI og fornybar energi. Dersom den globale veksten holder seg og rentene forblir lave, kan fondet gjøre det bra. Hovedrisiko er en korreksjon i teknologisektoren eller svakere vekst i USA.

== Fondsfinans Utbytte B - 10.94%
I Q3 2025 gikk Fondsfinans utbytte B opp +2.25. Dette grunnet sterke bidrag fra kvalitetsselskaper i finans- og forbrukerssektoren, og veide opp for svakhet i energi. _Merk: dette fondet er ikke det samme som fondsfinans norden utbytte B._

Fondets sammensetning er preget av en konsentrert portefølje med fokus på norske selskaper innen sektorer som finans, energi og konsumvarer. Per Oktober 2025 inkluderer toppholdings DNB Bank ASA (8,49 %), Storebrand ASA (7,89%), Equinor (6,47 %), Vend Marketplaces B (4,9 %), SalMar (4,61 %) og Kongsberg Gruppen (4,45%), Mowi (4,21%). Dette gir en bred diversifisering over bransjer slik som bank, forsikring, medier, energi og sjømat, med vekt på selskaper med stabile inntekter og utbyttepotensial. Porteføljeendringen fra forrige kvartal er økt vekting i finanssektoren. Geografisk er fondet primært lokalisert i Norge, med over 90 % av investeringene i norske aksjer, supplert med en mindre andel i Sverige (ca. 3 %). Fondet holder et sterkt nasjonalt fokus, men eksponeres også mot nordiske markeder for å utnytte regionale muligheter. 

Referanseindeksen til Fondsfinans Utbytte B er Oslo Børs Benchmark Index (OSEBX). I Q3 2025 viste Fondsfinans Utbytte B en positiv utvikling med avkastning på +2.25%, sammenlignet med referanseindeks på +2.26%. Dette representerer en moderat oppgang i et kvartal preget av varierende markedsforhold. Hoveddrivere til denne utviklingen er finanssektoren og teknologisektoren, og svakeste bidrag er energi og materialer. Dette indikerer en aktiv og god forvaltning som er i tråd med fondets historiske evne til å slå markedet over lengre perioder, spesielt i defensive markeder.

Viktige nøkkeltall: alpha 9,91, beta 0,73, sharpe ratio 2,20, standardavvik 7,71, $R^2$ 75,71. Ingen endring i bærekraftsområdet siden forrige kvartal, da de fortsatt har ESG-fokus. Kostnader: Innskudd etter 12. september: 5%, totalpris: 1,19%. 

Utsikter neste kvartal: Fondet posisjoneres defensivt mot rentekutt, med muligheter i nordisk vekst, men nøkkelrisiko er geopolitisk uro og oljeprisvolatilitet. 

== DNB Finans A - 5.63%
DNB Finans A Q3 2025 I Q3 gikk DNB Finans A relativt bra med markedet tatt i betraktning grunnet aktiv forvaltning og investeringer i stabile banker/aktører, $plus.minus 10 %$ verre enn Q3 i fjor, men forventet tatt markedet i betraktning de siste månedene.
\ \
DNB Finans AS er et aktivt forvaltet bransjefond med mål å gi bred eksponering innen finanssektoren og har geografisk eksponering $approx 50 %$ USA, $approx 40 %$ Europa/ GB & $approx 5 %$ Japan. Referanseindeks: MSCI World/Financials NR USD. Avkastning Q3 2025: 4.51 %, mot referanseindeks 5.41 %. År-til-dato: 15,02 %. Siden oppstart: 26,67 % p.a (CAGR). Hoveddrivere: Store banker som UBS group (Sveits), Goldman Sachs & Bank of America. Svakeste bidrag: Mastercard og Chubb har falt i Q3. 

Viktige nøkkeltall: alpha 2,32, beta 1,01, sharpe ratio 1,03, standardavvik 16,45, $R^2$ 98,5. 

Viktige porteføljeendringer: Ikke noe verdt å rapportere på, stort sett det samme. Bærekraft: Fondet har delvis bærekraftfokus med rating 19,33. ESG blir overvåket. Fondet klassifiseres som SFDR artikkel-6-produkt Kostnader: forvaltningshonorar 0,85 % i året. Utsikter neste kvartal: Da dette er et finansfond, påvirkes det sterkt av verdensbildet og vil derfor speile det til en viss grad. Det er likevel aktivt forvaltet, så med bakgrunn av roligere tider er utsiktene positive.

= 4. Økonomi Q3 - Retrospekt

== Finansiell oversikt


// \begin{tabular}{@{}lrr@{}} ... \end{tabular}
#table(
  columns: (auto, auto, auto),
  align: (left, right, right),
  stroke: (top: 0.5pt, bottom: 0.5pt),
  [], [*Q3 2025*], [*Q3 2024*], // Tom celle for å justere headere
  "Forvaltningskapital ved kvartalsstart", "385 246,78 NOK", "---",
  "Investeringsresultat i perioden", "+13 395 NOK", "---",
  "Forvaltningskapital ved kvartalsslutt", "397 412,87 NOK", "---",
  "Bruttoavkastning (kvartal)", "+3,48 %", "---",
  "Nettoavkastning (etter kostnader - honorar)", "+3,36 %", "---",
  "Kontantandel per kvartalsslutt", "1,51 % (6000,12 kr)", "---",
)

== Drivere
- *Geografi*: USA og Global Small Cap var største positive bidrag. Europa og Danmark trakk ned.
- *Sektor*: Teknologi og finans bidro mest. Eiendom og verktøy svake i Europa. 
- *Valuta*: Styrket NOK reduserte avkastning i ikke-sikrede europeiske posisjoner. NOK-svekkelse mot USD/EUR tidligere i kvartalet ga positiv effekt i globaleksponering.
- *Fondsvalg*: To aktive fond leverte god risikojustert avkastning (Fondsfinans Utbytte B, DNB Finans A). Öhman Global Growth lå bak referanse.

== Kostnadsbilde

- *Total kostnadsgrad (vektet)*: \~0,48 %  //vektet nå
- Indeksfond (USA, Europa, Sverige, Danmark, Small Cap): 0,19–0,25 %
  - Aktive fond:
    - Fondsfinans Utbytte B: 1,19 % 
    - DNB Finans A: \~0,85 % 
    - Öhman Global Growth A: \~1,23 %
- *Tiltak for kostnader*: Utfasing av Öhman Global Growth og Danmark-indeks og innfasing av bredt EM-indeksfond på antatt \~0,19–0,25 % honorarbeløp vil senke kostnadsgrad.

== Prognosejustering

- *Allokering*: Reduser Europa/Danmark-sensitivitet og enkeltselskapsrisiko. Øk bred EM-eksponering.
- *Kontantstyring*: Hold kontantandel \~1–2 % for rebalansering. 
- *Forventet effekt*: Lavere kostnad, bredere geografisk spredning, og bredere markedsdiversifisering.


== Tiltak 

+ *Selge store deler av Nordnet Danmark Indeks B*. Flytt solgte delen av porteføljen til bredt EM-indeksfond. 
+ *Selge store deler av Öhman Global Growth A*. Flytt solgte delen av portføljen til EM-indeks.
+ *Kontantstyring*: Hold 5-10 % kontanter inntil videre. 
+ *Innføre valutasikringsnivå*: For eksempel EUR 50 %, USD 30 % innen Q2 2026.


#set text(size: 8pt)

#v(50pt)
#align(center)[
  _Dette er tanker Forvaltningsgruppen har angående økonomi og burde ikke tolkes som finansielle råd._
]
