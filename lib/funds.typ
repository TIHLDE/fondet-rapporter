#import "theme.typ"
#import "format.typ"
#import "tables.typ": data-table
#import "charts.typ"

// Constructors for one fund. They exist to fail loudly at compile time when a
// figure is missing, instead of shipping a report with a blank cell.

#let require(value, field) = {
  if value == none or value == "" { panic("Missing " + field) }
  value
}

#let return-period(fund: none, benchmark: none, active-return: none) = (
  fund: require(fund, "return-period.fund"),
  benchmark: require(benchmark, "return-period.benchmark"),
  active-return: require(active-return, "return-period.active-return"),
)

#let fund-returns(one-year: none, three-year: none, five-year: none) = (
  one-year: require(one-year, "returns.one-year"),
  three-year: require(three-year, "returns.three-year"),
  five-year: require(five-year, "returns.five-year"),
)

#let risk-metric(one-year: none, three-year: none, five-year: none) = (
  one-year: require(one-year, "risk-metric.one-year"),
  three-year: require(three-year, "risk-metric.three-year"),
  five-year: require(five-year, "risk-metric.five-year"),
)

#let fund-risk-metrics(
  alpha: none,
  beta: none,
  r-squared: none,
  sharpe-ratio: none,
  standard-deviation: none,
) = (
  alpha: require(alpha, "risk-metrics.alpha"),
  beta: require(beta, "risk-metrics.beta"),
  r-squared: require(r-squared, "risk-metrics.r-squared"),
  sharpe-ratio: require(sharpe-ratio, "risk-metrics.sharpe-ratio"),
  standard-deviation: require(standard-deviation, "risk-metrics.standard-deviation"),
)

#let fund-facts(fund-type: none, benchmark: none, management-fee: none, mandate: none) = (
  fund-type: require(fund-type, "facts.fund-type"),
  benchmark: require(benchmark, "facts.benchmark"),
  management-fee: require(management-fee, "facts.management-fee"),
  mandate: require(mandate, "facts.mandate"),
)

// `weight` is a number, not a string, so the same figure drives both the
// heading and the weight chart.
#let fund(
  name: none,
  weight: none,
  facts: none,
  returns: none,
  risk-metrics: none,
  comment: none,
) = (
  name: require(name, "fund.name"),
  weight: require(weight, "fund.weight"),
  facts: require(facts, "fund.facts"),
  returns: require(returns, "fund.returns"),
  risk-metrics: require(risk-metrics, "fund.risk-metrics"),
  comment: require(comment, "fund.comment"),
)

#let _fact-rows(facts) = (
  ([Fondstype], facts.fund-type),
  ([Referanseindeks], facts.benchmark),
  ([Forvaltningshonorar], facts.management-fee),
  ([Mandat], facts.mandate),
)

#let _return-rows(returns) = (
  ([1 år], returns.one-year.fund, returns.one-year.benchmark, returns.one-year.active-return),
  ([3 år], returns.three-year.fund, returns.three-year.benchmark, returns.three-year.active-return),
  ([5 år], returns.five-year.fund, returns.five-year.benchmark, returns.five-year.active-return),
)

#let _risk-rows(metrics) = (
  ([Alfa], metrics.alpha.one-year, metrics.alpha.three-year, metrics.alpha.five-year),
  ([Beta], metrics.beta.one-year, metrics.beta.three-year, metrics.beta.five-year),
  ([Forklaringsgrad (R²)], metrics.r-squared.one-year, metrics.r-squared.three-year, metrics.r-squared.five-year),
  ([Sharpe-ratio], metrics.sharpe-ratio.one-year, metrics.sharpe-ratio.three-year, metrics.sharpe-ratio.five-year),
  ([Standardavvik], metrics.standard-deviation.one-year, metrics.standard-deviation.three-year, metrics.standard-deviation.five-year),
)

#let _sub-title(body) = block(above: 14pt, below: 6pt, text(weight: "bold")[#body])

// One fund, always in the same order: facts, returns, risk, comment.
#let fund-section(data) = block(above: 26pt, width: 100%)[
  #grid(
    columns: (1fr, auto),
    align: (left + bottom, right + bottom),
    text(size: 1.2em, weight: "bold", fill: theme.blue)[#data.name],
    text(size: theme.small-size, fill: theme.muted)[Porteføljevekt #format.pct(data.weight)],
  )
  #v(2pt)
  #line(length: 100%, stroke: 0.8pt + theme.rule)

  #block(breakable: false)[
    #_sub-title[Fakta om fondet]
    #data-table(([Parameter], [Verdi]), _fact-rows(data.facts), align: (left, left))
  ]

  #block(breakable: false)[
    #_sub-title[Avkastning (1–3–5 år)]
    #data-table(
      ([Periode], [Fond], [Referanseindeks], [Mer-/mindreavkastning]),
      _return-rows(data.returns),
      align: (left, right, right, right),
    )
  ]

  #block(breakable: false)[
    #_sub-title[Risikomål]
    #data-table(
      ([Data], [For 1 år], [For 3 år], [For 5 år]),
      _risk-rows(data.risk-metrics),
      align: (left, right, right, right),
    )
  ]

  #_sub-title[Kommentar]
  #block(data.comment)
]

// Weight chart for the whole portfolio, cash included when `cash` is given.
#let weight-overview(funds, cash: none) = {
  let items = funds.map(data => (data.name, data.weight))
  if cash != none { items.push(([Kontanter], cash)) }
  [
    #charts.weight-bar(items)
    #v(8pt)
    #charts.legend(items)
  ]
}

// The whole portfolio as one table, for reports that do not have room for a
// section per fund.
#let fund-summary(funds) = data-table(
  ([Fond], [Vekt], [Avkastning 1 år], [Referanseindeks], [Honorar]),
  funds.map(data => (
    [#data.name],
    format.pct(data.weight),
    [#data.returns.one-year.fund],
    [#data.returns.one-year.benchmark],
    [#data.facts.management-fee],
  )),
  align: (left, right, right, right, right),
)
