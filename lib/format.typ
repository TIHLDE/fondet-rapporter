// Norwegian number formatting: comma decimal mark, narrow space between
// thousands, non-breaking space before the unit.

#let _narrow-space = "\u{202F}"
#let _nbsp = "\u{00A0}"
#let _minus = "\u{2212}"

#let _pow10(exponent) = {
  let result = 1
  for _ in range(exponent) { result = result * 10 }
  result
}

#let _group(digits) = {
  let out = ""
  let count = digits.len()
  for (index, digit) in digits.clusters().enumerate() {
    if index > 0 and calc.rem(count - index, 3) == 0 { out = out + _narrow-space }
    out = out + digit
  }
  out
}

// 18.72 -> "18,72". Keeps the sign out; callers decide how to show it.
#let decimal(value, digits: 2) = {
  let scale = _pow10(digits)
  let scaled = calc.round(calc.abs(value) * scale)
  let whole = _group(str(calc.div-euclid(scaled, scale)))
  if digits == 0 { return whole }
  let fraction = str(calc.rem-euclid(scaled, scale))
  whole + "," + ("0" * (digits - fraction.len())) + fraction
}

#let _sign(value, explicit) = {
  if value < 0 { _minus } else if explicit { "+" } else { "" }
}

#let pct(value, digits: 1, sign: false) = {
  _sign(value, sign) + decimal(value, digits: digits) + _nbsp + "%"
}

// Percentage points, the unit used when comparing against the benchmark.
#let pp(value, digits: 2, sign: true) = {
  _sign(value, sign) + decimal(value, digits: digits) + _nbsp + "pp"
}

#let nok(value, digits: 0) = {
  _sign(value, false) + decimal(value, digits: digits) + _nbsp + "NOK"
}
