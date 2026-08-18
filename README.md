# TradingView multi-indicator

File: [`cpr_vwap_camarilla_suite.pine`](cpr_vwap_camarilla_suite.pine)

Daily **CPR** (KGS-style), **Camarilla**, **VWAP**, **moving averages**, **AlphaTrend** (KivancOzbilgic, MPL 2.0), and **volume profile** (POC / VAH / VAL) in one overlay. Turn volume profile off with **Show volume profile**.

## CPR (Daily only)

Inputs:
- Select Pivot Mode: Manual
- Show Daily CPR (Manual)
- Show Prev Day High
- Show Prev Day Low
- Show Daily R1–R4 / S1–S4

Daily CPR follows **CPR by KGS**: dotted circle plots, blue CPR band, green R1–R4, red S1–S4, black Prev Day High/Low. Price-scale labels use those plot titles (Daily TC, Daily Pivot, Daily BC, …).

Weekly / monthly / yearly / next-period CPR are removed.

## Camarilla

Matches the Pivots reference:
- Daily-based values
- 15 pivots back
- Labels + prices on the **left**
- Line width **3**
- **S3** and **R3** on by default, **black**
- P, S1, R1, S2, R2, S4, R4, S5, R5 available, off, orange
- Each day’s levels are drawn only across that session (open → close), then a new segment starts the next day (no infinite `extend.right`)

## AlphaTrend

Original AlphaTrend by KivancOzbilgic (MPL 2.0). Defaults match the published script (multiplier 1, period 14, signals on). Turn it off with **Show AlphaTrend**. Use **Change calculation (no volume data)?** on symbols without volume (uses RSI instead of MFI).

## Volume Profile

In the same file (inputs group **VOLUME PROFILE**). Best on 1–15 minute charts:

- Session **POC**, **VAH**, **VAL**, histogram, previous-session levels
- Checks: inside value, POC test, VAH/VAL break
- **VP BUY / VP SELL** on a strong break (bar change ≥ ATR × multiplier and volume ≥ average). Default source is **previous session** VAH/VAL

These signals are a filter, not a complete system. False breaks are common at the open and around news.

## Add to TradingView

Paste [`cpr_vwap_camarilla_suite.pine`](cpr_vwap_camarilla_suite.pine) into Pine Editor → Save → Add to chart.
