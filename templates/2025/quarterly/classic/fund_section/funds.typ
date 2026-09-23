#import "fund_section.typ": fund, fund_facts, fund_returns, return_period, fund_risk_metrics, risk_metric

#let fund_nordnet_usa_indeks = fund(
  name: "Nordnet USA Indeks",
  currency_or_share_class: "Porteføljevekt: 19,38 %",
  mandate: "TODO: Mandat/eksponering",
  benchmark: "TODO: Referanseindeks",

  facts: fund_facts(
    fund_type: "TODO: Fondstype",
    benchmark: "TODO: Referanseindeks",
    management_fee: "TODO: Forvaltningshonorar",
    mandate: "TODO: Mandat",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "-", benchmark: "—", active_return: "—"),
    three_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    five_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    beta: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    r_squared: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    sharpe_ratio: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    standard_deviation: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
  ),

  comment: [
    TODO: Maks 5 setninger. Kort forklaring på utvikling, drivere og vurdering fremover.
  ],
)

#let fund_klp_aksjeglobal_small_cap_indeks_p = fund(
  name: "KLP AksjeGlobal Small Cap Indeks P",
  currency_or_share_class: "Porteføljevekt: 13,67 %",
  mandate: "TODO: Mandat/eksponering",
  benchmark: "TODO: Referanseindeks",

  facts: fund_facts(
    fund_type: "TODO: Fondstype",
    benchmark: "TODO: Referanseindeks",
    management_fee: "TODO: Forvaltningshonorar",
    mandate: "TODO: Mandat",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    three_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    five_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    beta: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    r_squared: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    sharpe_ratio: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    standard_deviation: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
  ),

  comment: [
    TODO: Maks 5 setninger.
  ],
)

#let fund_klp_aksjeeuropa_indeks_n = fund(
  name: "KLP AksjeEuropa Indeks N",
  currency_or_share_class: "Porteføljevekt: 15,35 %",
  mandate: "TODO: Mandat/eksponering",
  benchmark: "TODO: Referanseindeks",

  facts: fund_facts(
    fund_type: "TODO: Fondstype",
    benchmark: "TODO: Referanseindeks",
    management_fee: "TODO: Forvaltningshonorar",
    mandate: "TODO: Mandat",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    three_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    five_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    beta: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    r_squared: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    sharpe_ratio: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    standard_deviation: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
  ),

  comment: [
    TODO: Maks 5 setninger.
  ],
)

#let fund_nordnet_sverige_index = fund(
  name: "Nordnet Sverige Index",
  currency_or_share_class: "Porteføljevekt: 16,58 %",
  mandate: "Fondet er et indeksfond som søker å kopiere avkastningen til det svenske aksjemarkedet ved å investere i selskaper inkludert i referanseindeksen",
  benchmark: "OMX Stockholm Benchmark ESG Responsible Index (OMXSBESG)",

  facts: fund_facts(
    fund_type: "Aksjefond (Indeksfond)",
    benchmark: "OMX Stockholm Benchmark ESG Responsible Index (OMXSBESG)",
    management_fee: "0,19%
",
    mandate: "Fondet er et indeksfond som søker å kopiere avkastningen til det svenske aksjemarkedet ved å investere i selskaper inkludert i referanseindeksen",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "21,08%", benchmark: "21,27%", active_return: "-0,19%"),
    three_year: return_period(fund: "62,17%", benchmark: "62,52%", active_return: "-0,35%"),
    five_year: return_period(fund: "64,83%", benchmark: "65,34%", active_return: "-0,51%"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "−3,54", three_year: "-0,76", five_year: "−0,91"),
    beta: risk_metric(one_year: "1,01", three_year: "1", five_year: "1,04"),
    r_squared: risk_metric(one_year: "97,7", three_year: "96,84", five_year: "97,96"),
    sharpe_ratio: risk_metric(one_year: "0,83", three_year: "0,82", five_year: "0,52"),
    standard_deviation: risk_metric(one_year: "13,28", three_year: "12,46", five_year: "16,37"),
  ),

  comment: [
    Nordnet Sverige Index leverer en avkastning som ligger veldig tett på sin referanseindeks, noe som bekrefter en effektiv passiv forvaltning. Fondet gir eksponering mot de mest likvide og bærekraftige selskapene på Stockholmsbørsen uten forvaltningsgebyr.
  ],
)

#let fund_nordnet_danmark_indeks_b = fund(
  name: "Nordnet Danmark Indeks B",
  currency_or_share_class: "Porteføljevekt: 11,53 %",
  mandate: "TODO: Mandat/eksponering",
  benchmark: "TODO: Referanseindeks",

  facts: fund_facts(
    fund_type: "TODO: Fondstype",
    benchmark: "TODO: Referanseindeks",
    management_fee: "TODO: Forvaltningshonorar",
    mandate: "TODO: Mandat",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    three_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    five_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    beta: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    r_squared: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    sharpe_ratio: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    standard_deviation: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
  ),

  comment: [
    TODO: Maks 5 setninger.
  ],
)

#let fund_ohman_global_growth_a = fund(
  name: "Öhman Global Growth A",
  currency_or_share_class: "Porteføljevekt: 5,40 %",
  mandate: "TODO: Mandat/eksponering",
  benchmark: "TODO: Referanseindeks",

  facts: fund_facts(
    fund_type: "TODO: Fondstype",
    benchmark: "TODO: Referanseindeks",
    management_fee: "TODO: Forvaltningshonorar",
    mandate: "TODO: Mandat",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    three_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    five_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    beta: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    r_squared: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    sharpe_ratio: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    standard_deviation: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
  ),

  comment: [
    TODO: Maks 5 setninger.
  ],
)

#let fund_fondsfinans_utbytte_b = fund(
  name: "Fondsfinans Utbytte B",
  currency_or_share_class: "Porteføljevekt: 10,94 %",
  mandate: "TODO: Mandat/eksponering",
  benchmark: "TODO: Referanseindeks",

  facts: fund_facts(
    fund_type: "TODO: Fondstype",
    benchmark: "TODO: Referanseindeks",
    management_fee: "TODO: Forvaltningshonorar",
    mandate: "TODO: Mandat",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    three_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    five_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    beta: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    r_squared: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    sharpe_ratio: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    standard_deviation: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
  ),

  comment: [
    TODO: Maks 5 setninger.
  ],
)

#let fund_dnb_finans_a = fund(
  name: "DNB Finans A",
  currency_or_share_class: "Porteføljevekt: 5,63 %",
  mandate: "TODO: Mandat/eksponering",
  benchmark: "TODO: Referanseindeks",

  facts: fund_facts(
    fund_type: "TODO: Fondstype",
    benchmark: "TODO: Referanseindeks",
    management_fee: "TODO: Forvaltningshonorar",
    mandate: "TODO: Mandat",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    three_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
    five_year: return_period(fund: "—", benchmark: "—", active_return: "—"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    beta: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    r_squared: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    sharpe_ratio: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
    standard_deviation: risk_metric(one_year: "—", three_year: "—", five_year: "—"),
  ),

  comment: [
    TODO: Maks 5 setninger.
  ],
)

// Eksporter samlet liste (importér denne fra main.typ)
#let funds = (
  fund_nordnet_usa_indeks,
  fund_klp_aksjeglobal_small_cap_indeks_p,
  fund_klp_aksjeeuropa_indeks_n,
  fund_nordnet_sverige_index,
  fund_nordnet_danmark_indeks_b,
  fund_ohman_global_growth_a,
  fund_fondsfinans_utbytte_b,
  fund_dnb_finans_a,
)
