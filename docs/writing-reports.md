# Writing the reports

What belongs in each document, and the methods the templates leave room for.
Aimed at whoever writes the next report, not at a reader of the finished one.

## Which template

Two documents are owed, the quarterly and the annual report. Each is a folder of
shapes under `templates/<year>/`, and every shape is a full draft. Pick the one
that fits the quarter, not the one that fills the most pages.

| Shape | Use it for | Length |
| --- | --- | --- |
| `quarterly/classic` | The full report, when something structural changed | 10 to 16 pages |
| `quarterly/skagen` | The ordinary quarter, and the one people actually read | 2 to 3 pages |
| `quarterly/verdi` | A quarter where the argument matters more than the tables | 2 to 4 pages |
| `quarterly/onepage` | Handing something out before a meeting | 1 page |
| `quarterly/board` | The board meeting, where a decision is needed | 2 to 3 pages |
| `quarterly/slides` | Presenting the quarter to a room | 10 slides |
| `annual/classic` | The year seen as a whole | 12 to 20 pages |
| `annual/nbim` | The year where the framework and the limits matter | 15 to 25 pages |
| `annual/uc` | The year the association wants governance documented | 15 to 25 pages |
| `annual/ucits` | The year where the accounts are the point | 12 to 18 pages |

All of them build on the same library, so the numbers and the fund data are
shared. Switching shape means copying another `main.typ`, not re-entering data.

## Where the shapes come from

`quarterly/skagen` follows the layout Norwegian fund managers use for their
monthly status reports: a fact column down the left, a period table against the
index, returns by calendar year, the manager's comment, then the holdings and
the disclaimer (SKAGEN Fondene, 2025).

`quarterly/verdi` is the shape student investment groups use when they publish:
portfolio changes, the market view, and reflections on what happened, written as
prose rather than as sections (Verdi NTNU, n.d.).

`quarterly/onepage` and `quarterly/board` are the two documents that get read
when nobody has time: the fact sheet a fund publishes for people who will not
open the report, and the pack a board needs, which opens with what it is being
asked to decide rather than with what happened.

`annual/nbim` follows the reporting of the Norwegian sovereign wealth fund: the
return first, the return against the benchmark as its own chapter with the
sources of the difference, then the framework and the limits the fund is managed
inside, operational events, responsible investment, and the accounts at the back
(Norges Bank Investment Management, 2025).

`annual/uc` follows the way institutional endowments report to the body that
owns the money. The University of California opens with the purpose of the
report and who prepared it, then significant changes since last year, then the
consolidated overview, then profiles per pool, and closes with an appendix of
risk and return, benchmark history, spending policy, glossary and data sources
(University of California, 2024).

`annual/ucits` carries what a regulated fund's annual report has to contain: a
statement of assets and liabilities, a detailed income and expenditure account
for the year, a report on the activity, and the holdings (Directive 2009/65/EC,
2009, Article 69). A student fund is not a UCITS and has no auditor, but the
list is a sound floor, and the template asks who checked the figures instead.

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

Directive 2009/65/EC of the European Parliament and of the Council of 13 July
2009 on the coordination of laws, regulations and administrative provisions
relating to undertakings for collective investment in transferable securities
(UCITS). (2009). Article 69.
https://www.legislation.gov.uk/eudr/2009/65/chapter/IX/section/1

CFA Institute. (2026). *Overview of the Global Investment Performance
Standards*. https://www.cfainstitute.org/insights/professional-learning/refresher-readings/2026/overview-of-the-global-investment-performance-standards

Norges Bank Investment Management. (2025). *Half-year report 2025*.
https://www.nbim.no/en/news-and-insights/reports/2025/half-year-report-2025/web-report-half-year-report-2025/

SKAGEN Fondene. (2025). *SKAGEN Avkastning: Månedsrapport februar 2025*.
https://www.skagenfondene.no/globalassets/pdfs/status-reports/norway/skagen-avkastning/2025/20250305_skagen-avkastning-februar.pdf

University of California. (2024). *Annual endowment report, fiscal year
2023-2024*. https://www.ucop.edu/investment-office/investment-reports/annual-reports/annual-endwoment-report-fy-2023-2024.pdf

Verdi NTNU. (n.d.). *Månedsrapporter*. https://www.verdintnu.no/oppdateringer

Verdipapirfondenes forening. (n.d.). *Bransjeanbefalinger*.
https://vff.no/bransjeanbefalinger
