# TradingView multi-indicator

Overlay script: **CPR**, **previous high/low**, **daily R/S pivots**, **Camarilla** (optional), **VWAP**, and **moving averages**.

File: [`cpr_vwap_camarilla_suite.pine`](cpr_vwap_camarilla_suite.pine)

RSI and Supertrend are not included.

## Add to TradingView

1. Open a chart → **Pine Editor**
2. Paste `cpr_vwap_camarilla_suite.pine`
3. **Save** → **Add to chart**
4. Use **Inputs** tick boxes to turn modules on or off
5. Use the **Style** tab to hide or recolor Daily TC / CPR / BC, R1–R3, S1–S3, and previous highs/lows

## CPR style (Trend Checker look)

Daily levels plot as **dotted circles**:

- **Daily TC / CPR / BC** — blue
- **Daily R1 R2 R3** — green
- **Daily S1 S2 S3** — red
- **Previous day / week / month / year high & low** — black

Weekly / monthly / yearly CPR use dotted lines so the script stays under TradingView’s 64-plot limit.

## Inputs

- **CPR LEVELS** — Auto Select, Daily/Weekly/Monthly/Yearly CPR, PDH/PDL (and weekly/monthly/yearly H/L)
- **DAILY PIVOTS** — R1/S1, R2/S2, R3/S3
- **CAMARILLA** — off by default; Daily H4/L4 and H3/L3
- **VWAP** — session VWAP (yellow by default), optional bands
- **MOVING AVERAGES** — five MAs with type, source, length, timeframe, color
