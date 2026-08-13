# TradingView multi-indicator

One overlay script: **CPR**, **previous high/low**, **Camarilla**, **VWAP**, **5 moving averages**, **RSI**, and **Supertrend**.

File: [`cpr_vwap_camarilla_suite.pine`](cpr_vwap_camarilla_suite.pine)

## Add to TradingView

1. Open a chart → **Pine Editor**
2. Paste `cpr_vwap_camarilla_suite.pine`
3. **Save** → **Add to chart**
4. Open settings (**Inputs**) and tick only what you want

## Inputs layout

Groups match a Trend Checker-style panel. Each row is a tick box (plus type / length where needed).

**CPR LEVELS**
- Auto Select CPR (intraday → daily, daily chart → weekly, weekly → monthly, monthly → yearly)
- Show Daily / Weekly / Monthly / Yearly CPR
- Same row: PDH/PDL, PWH/PWL, PMH/PML, PYH/PYL

**CAMARILLA**
- Daily / Weekly / Monthly tick boxes
- H4/L4 and H3/L3 tick boxes

**VWAP**
- Show VWAP, Show Bands, source, σ1, σ2, color

**MOVING AVERAGES**
- MA #1–#5: enable, type, source, length, timeframe (blank = chart), color
- Defaults: 10 / 20 / 50 SMA on; 100 / 200 SMA off (daily TF)

**RSI**
- Show RSI, length, TF, OB / OS, markers, bar color

**SUPERTREND**
- Show Supertrend, ATR, factor, TF, fill, up/down colors

## Style tab

Every level is its own plot, so you can hide or recolor them individually: Daily TC / CPR / BC, previous highs/lows, Camarilla H3/H4/L3/L4, VWAP, each MA, Supertrend.

CPR and pivot levels use **circles** so they read as clean dotted horizontals and do not draw diagonal joins between days.

## Alerts

Supertrend flips, RSI OB/OS, VWAP crosses, Daily CPR breaks, Daily Camarilla H4/L4 breaks.
