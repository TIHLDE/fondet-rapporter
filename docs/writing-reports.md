# Writing the reports

What belongs in each document, and the methods the templates leave room for.
Aimed at whoever writes the next report, not at a reader of the finished one.

## Which template

| Template | Use it for | Length |
| --- | --- | --- |
| `quarterly` | The quarter's report to the association | 10 to 16 pages |
| `annual` | The year seen as a whole, with the four quarters side by side | 12 to 20 pages |
| `factsheet` | A single page anyone can read in two minutes | 1 page |
| `analysis` | Attribution, risk and exposure when a paragraph is not enough | 3 to 5 pages |
| `fund-note` | One fund examined on its own before keeping or selling it | 2 to 4 pages |
| `decision-memo` | The case for a trade, written before the trade | 2 to 3 pages |

The quarterly report is the obligation. The rest exist so that report can stay
short: move the arithmetic into an analysis note and the argument into a
decision memo, and the quarterly is left with what happened and what it means.

## What a performance report has to contain

The Global Investment Performance Standards are written for firms managing
client money, not for a student fund, but the reporting requirements are a
useful floor. A GIPS composite report presents returns for at least five years
and builds towards ten, shows the benchmark return next to the portfolio return
for every period, states assets under management at each period end, and gives
the three-year annualised standard deviation of both portfolio and benchmark.
Returns are calculated after transaction costs (CFA Institute, 2026).

Carried over to these templates, that means every report states:

- Return for the period and the benchmark return for the same period, in the
  same table, net of costs
- Longer periods next to it: year to date, one, three and five years, since
  inception
- Assets under management at the start and the end of the period
- A risk measure, not only a return
- Which benchmark, and why that one

Keep the benchmark fixed. Verdipapirfondenes forening has an industry
recommendation on benchmark selection precisely because a benchmark chosen
after the fact flatters the manager, and further recommendations on reporting
active share and on individualised cost reporting (Verdipapirfondenes forening,
n.d.). A changed benchmark is a disclosure, not a footnote.

## Commentary

The numbers say what happened. The commentary has to say why, and it is the
part that is easy to fake with adjectives. Three rules:

1. Attribute, do not narrate. "Technology contributed 1.4 percentage points of
   the 4.1 per cent return" beats "technology was strong".
2. Separate the market from the decision. A portfolio can rise while every
   choice in it was wrong.
3. Write the losers at the same length as the winners.

## Attribution

Active return is the portfolio return minus the benchmark return. Brinson-style
attribution splits it per segment into the effect of weighting the segment
differently and the effect of picking different holdings inside it
(AnalystPrep, n.d.):

$$A_i = (w_i^p - w_i^b)(r_i^b - r^b), \quad S_i = w_i^b (r_i^p - r_i^b), \quad I_i = (w_i^p - w_i^b)(r_i^p - r_i^b)$$

where $w$ is a weight, $r$ a return, $p$ the portfolio, $b$ the benchmark and
$i$ the segment. Allocation $A_i$ is the value of being overweight a segment
that beat the benchmark as a whole; selection $S_i$ is the value of holding
better names inside the segment; interaction $I_i$ is what is left. They sum to
the active return, which is the check that the numbers are right.

For this portfolio the useful segments are region and fund type, since that is
how it is actually built. Positive allocation with negative selection means the
call on markets worked and the fund picks did not, and that distinction decides
whether to keep paying for active funds.

## Risk-adjusted return

$$\text{Sharpe} = \frac{\bar r_p - \bar r_f}{\sigma_p}, \quad \text{Sortino} = \frac{\bar r_p - \bar r_f}{\sigma_{\text{down}}}, \quad \text{IR} = \frac{\bar r_p - \bar r_b}{\sigma(r_p - r_b)}$$

Sharpe divides excess return over the risk-free rate by total volatility;
Sortino divides by downside volatility only, so the two diverge when returns
are skewed. The information ratio measures active return per unit of tracking
error $\sigma(r_p - r_b)$ and is the honest score for an active portfolio: it
asks what the deviation from the benchmark actually bought.

Report maximum drawdown next to them. It is the one risk figure people feel.

## Exposure

$$\text{Active share} = \frac{1}{2}\sum_i \left| w_i^p - w_i^b \right|, \quad \text{HHI} = \sum_i (w_i^p)^2$$

Active share says how much of the portfolio differs from the benchmark, and it
puts a price on the fees: a fund with 20 per cent active share and a 1.2 per
cent fee charges an active price for an index. The Herfindahl index is
concentration; it rises fast when a few positions dominate, and it is the
number to look at before claiming diversification.

Split return in Norwegian kroner into the local return and the currency effect.
Without that split the group takes credit for the krone weakening, and blame
when it strengthens.

## Before sending

- Every figure has a date and a source
- Benchmark is the same one as last quarter
- The losers are explained
- At least one statement in the report could turn out to be wrong, and says how
  we would know

## References

AnalystPrep. (n.d.). *Sources of portfolio returns and attribution*.
https://analystprep.com/study-notes/cfa-level-iii/sources-of-portfolio-returns/

CFA Institute. (2026). *Overview of the Global Investment Performance
Standards*. https://www.cfainstitute.org/insights/professional-learning/refresher-readings/2026/overview-of-the-global-investment-performance-standards

Verdipapirfondenes forening. (n.d.). *Bransjeanbefalinger*.
https://vff.no/bransjeanbefalinger
