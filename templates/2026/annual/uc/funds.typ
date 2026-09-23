#import "/lib/funds.typ": fund, fund-facts, fund-returns, return-period, fund-risk-metrics, risk-metric

// One entry per fund in the portfolio. Every field is required: a missing
// figure stops the build instead of printing an empty cell.
#let fund-example = fund(
  name: "TODO: fondsnavn",
  weight: 0.0,

  facts: fund-facts(
    fund-type: "TODO: fondstype",
    benchmark: "TODO: referanseindeks",
    management-fee: "TODO: forvaltningshonorar",
    mandate: "TODO: mandat",
  ),

  returns: fund-returns(
    one-year: return-period(fund: "TODO", benchmark: "TODO", active-return: "TODO"),
    three-year: return-period(fund: "TODO", benchmark: "TODO", active-return: "TODO"),
    five-year: return-period(fund: "TODO", benchmark: "TODO", active-return: "TODO"),
  ),

  risk-metrics: fund-risk-metrics(
    alpha: risk-metric(one-year: "TODO", three-year: "TODO", five-year: "TODO"),
    beta: risk-metric(one-year: "TODO", three-year: "TODO", five-year: "TODO"),
    r-squared: risk-metric(one-year: "TODO", three-year: "TODO", five-year: "TODO"),
    sharpe-ratio: risk-metric(one-year: "TODO", three-year: "TODO", five-year: "TODO"),
    standard-deviation: risk-metric(one-year: "TODO", three-year: "TODO", five-year: "TODO"),
  ),

  comment: [
    TODO: maks fem setninger om utvikling, drivere og vurdering fremover.
  ],
)

// The list main.typ imports. Order decides the order in the report.
#let funds = (fund-example,)
