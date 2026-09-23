#import "/lib/funds.typ": fund, fund-facts, fund-returns, return-period, fund-risk-metrics, risk-metric

#let fund-nordnet-usa-indeks = fund(
  name: "Nordnet USA Indeks",
  weight: 18.72,

  facts: fund-facts(
    fund-type: "Indeksfond",
    benchmark: "MSCI USA Climate Change Index (Bloomberg-ticker: MXUSCLNU)",
    management-fee: "0,19%",
    mandate: "Fondet har som mål å spore nettoavkastningsytelsen til MSCI USA Climate Change Index minus gebyrer og utgifter. Indeksen er en aksjeindeks som representerer de store og mellomstore verdipapirene som omsettes i USA.",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "5,07%", benchmark: "18,40%", active-return: "-13,33 PP"),
    three-year: return-period(fund: "89.97%", benchmark: "109.87 %", active-return: "-19,9 PP"),
    five-year: return-period(fund: "137,11%", benchmark: "100.07%", active-return: "+36,04 PP"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "0,63", three-year: "0,23", five-year: "1,16"),
    beta: risk-metric(one-year: "1", three-year: "1", five-year: "1,01"),
    r-squared: risk-metric(one-year: "97,44", three-year: "98,13", five-year: "98,22"),
    sharpe-ratio: risk-metric(one-year: "-0,12", three-year: "0,99", five-year: "1,01"),
    standard-deviation: risk-metric(one-year: "18,21", three-year: "14,72", five-year: "15,03"),
  ),

  comment: [
    Fondet er sterkt preget av Amerikanske teknologiaksjer med en eksponering mot teknologisektoren på omtrent 39%. Dette gjør at utvikling innen AI preger fondet i stor grad og at AI-kappløpet fremover er avgjørende for prestasjonen av fondet. I tillegg er fondet sensitiv over utviklingen av dollaren, noe som i nyere tid har svekket fondets prestasjon da dollaren er svekket.
  ],
)

#let fund-klp-aksjeglobal-small-cap-indeks-p = fund(
  name: "KLP AksjeGlobal Small Cap Indeks P",
  weight: 13.76,

  facts: fund-facts(
    fund-type: "Indeksfond",
    benchmark: "MSCI World Small Cap Index NOK",
    management-fee: "0,42%",
    mandate: "Fondet har som mål å oppnå en tilnærmet lik avkastning som avkastningen på de globale aksjemarkedene, målt gjennom fondets referanseindeks MSCI World Small Cap Index NOK.",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "11,62%", benchmark: "20,44%", active-return: "-8,82 %"),
    three-year: return-period(fund: "52,45%", benchmark: "52,3%", active-return: "0,15 %"),
    five-year: return-period(fund: "68,95%", benchmark: "44,0%", active-return: "24,95 %"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "3,6", three-year: "-0,06", five-year: "-0,72"),
    beta: risk-metric(one-year: "1,08", three-year: "1,08", five-year: "1,08"),
    r-squared: risk-metric(one-year: "97,21", three-year: "95,54", five-year: "95,93"),
    sharpe-ratio: risk-metric(one-year: "-0,06", three-year: "0,49", five-year: "0,56"),
    standard-deviation: risk-metric(one-year: "15,72", three-year: "15,43", five-year: "14,76"),
  ),

  comment: [
    Fondet har levert betydelig svakere avkastning enn referanseindeksen siste år, men har over 3 år prestert ganske likt indeksen. Over 5 år viser fondet høyere totalavkastning enn referanseindeksen, men dette må tolkes med varsomhet gitt at fondet er et indeksfond og alfa over lengre perioder er nær null eller negativ. Beta på rundt 1,08 indikerer noe høyere markedsrisiko enn indeksen. Den høye forklaringsgraden viser at fondet i stor grad følger referanseindeksen. Avvik i avkastning kan forklares av kostnader, valutabevegelser og mindre sporingsavvik.
  ],
)

#let fund-klp-aksjeeuropa-indeks-n = fund(
  name: "KLP AksjeEuropa Indeks N",
  weight: 15.67,

  facts: fund-facts(
    fund-type: "Aksje-/Verdipapirfond",
    benchmark: "MSCI Europe Indeks",
    management-fee: "0,25%",
    mandate: "KLP AksjeEuropa Indeks har som mål å oppnå en avkastning tilnærmet lik den europeiske referanseindeksen.",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "18,75%", benchmark: "36,25", active-return: "-17,5"),
    three-year: return-period(fund: "16,45%", benchmark: "18,97 ", active-return: "-2,3"),
    five-year: return-period(fund: "13,61%", benchmark: "10,98", active-return: "2,63"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "−1,05", three-year: "−0,06", five-year: "−0,3"),
    beta: risk-metric(one-year: "1,03", three-year: "1,01", five-year: "1"),
    r-squared: risk-metric(one-year: "99,2", three-year: "99,09", five-year: "99,36"),
    sharpe-ratio: risk-metric(one-year: "0,92", three-year: "1,01", five-year: "0,95"),
    standard-deviation: risk-metric(one-year: "11,06", three-year: "10,3", five-year: "11,25"),
  ),

  comment: [
    KLP AksjeEuropa Indeks N leverer en avkastning som ligger tett opp mot sin referanseindeks over tid, noe som indikerer en effektiv og disiplinert indeksforvaltning. Mindre avvik kan forklares med kostnader, rebalansering og ESG-tilpasninger innenfor indeksmandatet. Fondet gir bred eksponering mot europeiske aksjemarkeder med høy likviditet og god diversifisering.
  ],
)

#let fund-nordnet-sverige-index = fund(
  name: "Nordnet Sverige Index",
  weight: 17.93,

  facts: fund-facts(
    fund-type: "Aksjefond (Indeksfond)",
    benchmark: "OMX Stockholm Benchmark ESG Responsible Index (OMXSBESG)",
    management-fee: "0,19%
",
    mandate: "Fondet er et indeksfond som søker å kopiere avkastningen til det svenske aksjemarkedet ved å investere i selskaper inkludert i referanseindeksen",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "21,08%", benchmark: "21,27%", active-return: "-0,19%"),
    three-year: return-period(fund: "62,17%", benchmark: "62,52%", active-return: "-0,35%"),
    five-year: return-period(fund: "64,83%", benchmark: "65,34%", active-return: "-0,51%"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "−3,54", three-year: "-0,76", five-year: "−0,91"),
    beta: risk-metric(one-year: "1,01", three-year: "1", five-year: "1,04"),
    r-squared: risk-metric(one-year: "97,7", three-year: "96,84", five-year: "97,96"),
    sharpe-ratio: risk-metric(one-year: "0,83", three-year: "0,82", five-year: "0,52"),
    standard-deviation: risk-metric(one-year: "13,28", three-year: "12,46", five-year: "16,37"),
  ),

  comment: [
    Nordnet Sverige Index leverer en avkastning som ligger veldig tett på sin referanseindeks, noe som bekrefter en effektiv passiv forvaltning. Fondet gir eksponering mot de mest likvide og bærekraftige selskapene på Stockholmsbørsen uten forvaltningsgebyr.
  ],
)

#let fund-nordnet-danmark-indeks-b = fund(
  name: "Nordnet Danmark Indeks B",
  weight: 10.73,

  facts: fund-facts(
    fund-type: "Aksjeindeksfond (verdipapirfond, passivt forvaltet)",
    benchmark: "OMX Copenhagen 25 ESG Responsible Gross Index (OMXC25ESGGI)",
    management-fee: "0,19%",
    mandate: "Fondet skal replikere referanseindeksen ved å investere i verdipapirer som inngår i eller følger indeksen tett, innenfor ESG-kriterier og med lav tracking error.",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "5,34", benchmark: "4,58", active-return: "0,76"),
    three-year: return-period(fund: "28,23", benchmark: "15,21", active-return: "13,02"),
    five-year: return-period(fund: "37,29", benchmark: "22,32", active-return: "14,97"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "12,62", three-year: "3,28", five-year: "1,78"),
    beta: risk-metric(one-year: "0,48", three-year: "0,37", five-year: "0,56"),
    r-squared: risk-metric(one-year: "71,49", three-year: "43,91", five-year: "55,33"),
    sharpe-ratio: risk-metric(one-year: "-0,14", three-year: "0,11", five-year: "0,29"),
    standard-deviation: risk-metric(one-year: "15,57", three-year: "12,19", five-year: "15,18"),
  ),

  comment: [
    Nordnet Danmark Indeks B har levert tydelig meravkastning mot sin referanseindeks over 1, 3 og 5 år. Samtidig har fondet lav beta og moderat forklaringsgrad som indikerer at fondet ikke følger indeksen helt tett. Avviket kan forklares med forskjeller i sammensetning eller ESG-tilpasning innenfor mandatet.
  ],
)

#let fund-ohman-global-growth-a = fund(
  name: "Öhman Global Growth A",
  weight: 5.77,

  facts: fund-facts(
    fund-type: "Aksjefond",
    benchmark: "MSCI World",
    management-fee: "1,24%",
    mandate: "Fondet er et aktivt forvaltet globalt aksjefond, som investerer hovedsaklig i teknologi og har som mål å slå indeksen.",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "16,02%", benchmark: "6,91%", active-return: "9,11%"),
    three-year: return-period(fund: "86,78%", benchmark: "81.24%", active-return: "5,54%"),
    five-year: return-period(fund: "51,50%", benchmark: "107,99%", active-return: "-56,49%"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "5,15", three-year: "−3,98", five-year: "−6,79"),
    beta: risk-metric(one-year: "0,71", three-year: "0,73", five-year: "0,77"),
    r-squared: risk-metric(one-year: "85,53", three-year: "80,46", five-year: "78,91"),
    sharpe-ratio: risk-metric(one-year: "0,45", three-year: "0,86", five-year: "0,39"),
    standard-deviation: risk-metric(one-year: "19,05", three-year: "16,77", five-year: "17,84"),
  ),

  comment: [
    Öhman Global Growth A gjør det godt i kvartal 4 etter en fortsatt voksende teknologi bransje. Den er opp nærmere 8% for kvartalet, ikke langt fra dobbelt av index, som ligger på 4,5% for samme periode. 
  ],
)

#let fund-fondsfinans-utbytte-b = fund(
  name: "Fondsfinans Utbytte B",
  weight: 11.24,

  facts: fund-facts(
    fund-type: "Aksjefond",
    benchmark: "OSE Oslo Børs Mutual Fund TR NOK",
    management-fee: "1,19% ",
    mandate: "Fondsfinans Utbytte er et aktivt forvaltet aksjefond som i hovedsak investerer i norske børsnoterte aksjer. Fondet vil fortrinnsvis investere i kvalitetsselskaper med høy kapitalavkastning, solid balanse og langsiktig potensial til å utbetale utbytte (etter forvalters vurdering).",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "25,36%", benchmark: "25,87%", active-return: "- 0,51%"),
    three-year: return-period(fund: "70,15%", benchmark: "54,26%", active-return: "+15,89%"),
    five-year: return-period(fund: "137,79%", benchmark: "80,63%", active-return: "+57,16%"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "5,92", three-year: "6,5", five-year: "8,07"),
    beta: risk-metric(one-year: "0,68", three-year: "0,76", five-year: "0,86"),
    r-squared: risk-metric(one-year: "86,27", three-year: "86,38", five-year: "85,27"),
    sharpe-ratio: risk-metric(one-year: "1,28", three-year: "1,16", five-year: "1,11"),
    standard-deviation: risk-metric(one-year: "8,44", three-year: "9,57", five-year: "14,45"),
  ),

  comment: [
    I Q4 2025 gikk Fondsfinans Utbytte B relativt bra, drevet av solide resultater i norske finans- og energiselskaper samt stabilt utbyttefokus i et volatilt marked. Fondet leverte +3,76% i Q4 2025. Fondsfinans Utbytte B er et aktivt forvaltet aksjefond som investerer i norske kvalitetsselskaper med høy kapitalavkastning, solid balanse og god evne til å utbetale utbytte. Fondet har som mål å gi god langsiktig totalavkastning. Porteføljen er konsentrert og midlene plasseres i forskjellige selskaper på tvers av ulike bransjer i det norske markedet for å sikre risikospredning.
  ],
)

#let fund-dnb-finans-a = fund(
  name: "DNB Finans A",
  weight: 6.18,

  facts: fund-facts(
    fund-type: "Aktivt forvaltet aksjefond",
    benchmark: "MSCI World Financials NR USD",
    management-fee: "1,15 %",
    mandate: "Aktivt forvaltet globalt aksjefond som investerer i finanssektoren med mål om langsiktig verdiskaping.",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "13,49 %", benchmark: "28,74 %", active-return: "- 15,25 %"),
    three-year: return-period(fund: "84,95 %", benchmark: "89,30 %", active-return: "- 4,35 %"),
    five-year: return-period(fund: "142,61 %", benchmark: "118,00 %", active-return: "+ 24,61 %"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "4,34 ", three-year: "0,21", five-year: "-0,58"),
    beta: risk-metric(one-year: "1,12", three-year: "1,09", five-year: "1,13"),
    r-squared: risk-metric(one-year: "95,89", three-year: "94,14", five-year: "94"),
    sharpe-ratio: risk-metric(one-year: "0,77", three-year: "1,08", five-year: "1,09"),
    standard-deviation: risk-metric(one-year: "14,57", three-year: "14,8", five-year: "15,53"),
  ),

  comment: [
    Fondet har underprestert referanseindeksen på 1 og 3 år, men har tydelig overprestert på 5 år med 24,6 prosentpoeng, noe som gir sterk langsiktig merverdi. Fondet har Sharpe-ratio over 1 på 3 og 5 år, noe som indikerer god risikojustert avkastning. Den høye forklaringsgraden (R²) viser at DNB Finans A i stor grad følger utviklingen i den globale finanssektoren.
  ],
)

// The list main.typ imports. Order decides the order in the report.
#let funds = (
  fund-nordnet-usa-indeks,
  fund-klp-aksjeglobal-small-cap-indeks-p,
  fund-klp-aksjeeuropa-indeks-n,
  fund-nordnet-sverige-index,
  fund-nordnet-danmark-indeks-b,
  fund-ohman-global-growth-a,
  fund-fondsfinans-utbytte-b,
  fund-dnb-finans-a,
)
