// Dokumentstil
#set page(margin: (top: 0mm, bottom: 0mm, left: 0mm, right: 0mm))
#set text(font: "Libertinus Sans", size: 11pt)
#set par(leading: 0em, spacing: 0em)

// Farger
#let color_table_header_fill = luma(235)
#let color_table_zebra_fill = luma(245)
#let color_rule = luma(190)

// Typografi
#let section_title(section_text) = [
  #text(size: 14pt, weight: "bold")[#section_text]
  #line(length: 100%, stroke: (paint: color_rule, thickness: 0.8pt))
]

#let sub_title(subsection_text) = [
  #text(size: 10pt, weight: "bold")[#subsection_text]
]

#let require_nonempty(value, message) = {
  if value == none or value == "" { panic(message) }
  value
}

#let validate_table_rows(header_labels, body_rows) = {
  let number_of_columns = header_labels.len()

  body_rows.enumerate().map(((row_index, row_cells)) => {
    if row_cells.len() != number_of_columns {
      panic(
        "Tabellrad " + str(row_index)
        + " har " + str(row_cells.len())
        + " kolonner, forventet " + str(number_of_columns) + "."
      )
    }
    row_cells
  })
}

// Konstanter for header
#let table_header_facts = ("Parameter", "Verdi")
#let table_header_returns = ("Periode", "Fond", "Referanseindeks", "Mer-/mindreavkastning")
#let table_header_risk_metrics = ("Data", "For 1 år", "For 3 år", "For 5 år")

// Hjelper til tabell
#let table_header_cell(header_text) = table.cell(fill: color_table_header_fill)[
  #text(weight: "bold")[#header_text]
]

// Sånn hvit/grå/hvit/grå
#let zebra_row(row_index, cells) = {
  let fill_color = if calc.odd(row_index) { color_table_zebra_fill } else { none }
  cells.map(cell => table.cell(fill: fill_color)[#cell])
}

#let nice_table(header_labels, body_rows, column_alignments: (left,)) = {
  let number_of_columns = header_labels.len()

  let resolved_alignments = {
    if column_alignments.len() == number_of_columns {
      column_alignments
    } else {
      (column_alignments.at(0),) * number_of_columns
    }
  }

  let validated_body_rows = validate_table_rows(header_labels, body_rows)

  table(
    columns: number_of_columns,
    inset: 6pt,
    align: resolved_alignments,
    stroke: (x: 0.6pt, y: 0.6pt),
    ..header_labels.map(label => table_header_cell(label)),
    ..validated_body_rows
      .enumerate()
      .map(((row_index, row_cells)) => zebra_row(row_index, row_cells))
      .flatten(),
  )
}

#let risk_metrics_table(metrics_rows) = nice_table(
  table_header_risk_metrics,
  metrics_rows,
  column_alignments: (left, right, right, right),
)

// Konstruktør (named args + validering)
#let fund_facts(
  fund_type: none,
  benchmark: none,
  management_fee: none,
  mandate: none,
) = (
  fund_type: require_nonempty(fund_type, "Mangler facts.fund_type"),
  benchmark: require_nonempty(benchmark, "Mangler facts.benchmark"),
  management_fee: require_nonempty(management_fee, "Mangler facts.management_fee"),
  mandate: require_nonempty(mandate, "Mangler facts.mandate"),
)

#let return_period(
  fund: none,
  benchmark: none,
  active_return: none,
) = (
  fund: require_nonempty(fund, "Mangler return_period.fund"),
  benchmark: require_nonempty(benchmark, "Mangler return_period.benchmark"),
  active_return: require_nonempty(active_return, "Mangler return_period.active_return"),
)

#let fund_returns(
  one_year: none,
  three_year: none,
  five_year: none,
) = (
  one_year: require_nonempty(one_year, "Mangler returns.one_year"),
  three_year: require_nonempty(three_year, "Mangler returns.three_year"),
  five_year: require_nonempty(five_year, "Mangler returns.five_year"),
)

#let risk_metric(
  one_year: none,
  three_year: none,
  five_year: none,
) = (
  one_year: require_nonempty(one_year, "Mangler risk_metric.one_year"),
  three_year: require_nonempty(three_year, "Mangler risk_metric.three_year"),
  five_year: require_nonempty(five_year, "Mangler risk_metric.five_year"),
)

#let fund_risk_metrics(
  alpha: none,
  beta: none,
  r_squared: none,
  sharpe_ratio: none,
  standard_deviation: none,
) = (
  alpha: require_nonempty(alpha, "Mangler risk_metrics.alpha"),
  beta: require_nonempty(beta, "Mangler risk_metrics.beta"),
  r_squared: require_nonempty(r_squared, "Mangler risk_metrics.r_squared"),
  sharpe_ratio: require_nonempty(sharpe_ratio, "Mangler risk_metrics.sharpe_ratio"),
  standard_deviation: require_nonempty(standard_deviation, "Mangler risk_metrics.standard_deviation"),
)

// Hovedkonstruktør: krever at alt finnes
#let fund(
  name: none,
  currency_or_share_class: none,
  mandate: none,
  benchmark: none,
  facts: none,
  returns: none,
  risk_metrics: none,
  comment: none,
) = (
  name: require_nonempty(name, "Mangler fund.name"),
  currency_or_share_class: require_nonempty(currency_or_share_class, "Mangler fund.currency_or_share_class"),
  mandate: require_nonempty(mandate, "Mangler fund.mandate"),
  benchmark: require_nonempty(benchmark, "Mangler fund.benchmark"),
  facts: require_nonempty(facts, "Mangler fund.facts"),
  returns: require_nonempty(returns, "Mangler fund.returns"),
  risk_metrics: require_nonempty(risk_metrics, "Mangler fund.risk_metrics"),
  comment: require_nonempty(comment, "Mangler fund.comment"),
)

// Bygg rader automatisk
#let build_fact_rows(facts) = (
  ("Fondstype", facts.fund_type),
  ("Referanseindeks", facts.benchmark),
  ("Forvaltningshonorar", facts.management_fee),
  ("Mandat", facts.mandate),
)

#let build_return_rows(returns) = (
  ("1 år", returns.one_year.fund, returns.one_year.benchmark, returns.one_year.active_return),
  ("3 år", returns.three_year.fund, returns.three_year.benchmark, returns.three_year.active_return),
  ("5 år", returns.five_year.fund, returns.five_year.benchmark, returns.five_year.active_return),
)

#let build_risk_rows(risk_metrics) = (
  ("Alfa", risk_metrics.alpha.one_year, risk_metrics.alpha.three_year, risk_metrics.alpha.five_year),
  ("Beta", risk_metrics.beta.one_year, risk_metrics.beta.three_year, risk_metrics.beta.five_year),
  ("Forklaringsgrad (R²)", risk_metrics.r_squared.one_year, risk_metrics.r_squared.three_year, risk_metrics.r_squared.five_year),
  ("Sharpe-ratio", risk_metrics.sharpe_ratio.one_year, risk_metrics.sharpe_ratio.three_year, risk_metrics.sharpe_ratio.five_year),
  ("Standardavvik", risk_metrics.standard_deviation.one_year, risk_metrics.standard_deviation.three_year, risk_metrics.standard_deviation.five_year),
)

// Seksjon per fond
#let fund_section(fund_data) = [
  #section_title(fund_data.name + " – " + fund_data.currency_or_share_class)

  #sub_title("Fakta om fondet")
  #nice_table(
    table_header_facts,
    build_fact_rows(fund_data.facts),
    column_alignments: (left, left),
  )

  #sub_title("Avkastning (1–3–5 år)")
  #nice_table(
    table_header_returns,
    build_return_rows(fund_data.returns),
    column_alignments: (left, right, right, right),
  )

  #sub_title("Risikomål")
  #risk_metrics_table(build_risk_rows(fund_data.risk_metrics))

  #sub_title("Kort kommentar (maks 5 setninger)")
  #set par(leading: 1em, spacing: 0em)
  #fund_data.comment
]

// Eksempeldata
#let fund_1 = fund(
  name: "Fondnavn",
  currency_or_share_class: "A (NOK)",
  mandate: "Aksjer - global, aktiv forvaltning",
  benchmark: "MSCI World NR",

  facts: fund_facts(
    fund_type: "Global aksje",
    benchmark: "MSCI World NR",
    management_fee: "0,75%",
    mandate: "Aksjer - global, aktiv forvaltning",
  ),

  returns: fund_returns(
    one_year: return_period(fund: "10,2%", benchmark: "9,7%", active_return: "+0,5%"),
    three_year: return_period(fund: "25,1%", benchmark: "24,0%", active_return: "+1,1%"),
    five_year: return_period(fund: "55,0%", benchmark: "52,3%", active_return: "+2,7%"),
  ),

  risk_metrics: fund_risk_metrics(
    alpha: risk_metric(one_year: "−1,32", three_year: "0,14", five_year: "0,85"),
    beta: risk_metric(one_year: "0,98", three_year: "1,00", five_year: "1,00"),
    r_squared: risk_metric(one_year: "98,26", three_year: "98,49", five_year: "98,33"),
    sharpe_ratio: risk_metric(one_year: "0,34", three_year: "0,93", five_year: "1,03"),
    standard_deviation: risk_metric(one_year: "19,69", three_year: "15,96", five_year: "15,17"),
  ),

  comment: [
    Utvikling relativt til indeks. Viktigste drivere i perioden.
    Eventuelle endringer i risiko eller portefølje. Relevante hendelser.
    Kort fremoverrettet vurdering.
  ],
)
// ------

// VIKTIG: Liste må ha trailing comma ved ett element chat sa det
#let funds = (fund_1,)

#for fund_data in funds [
  #fund_section(fund_data)
]
