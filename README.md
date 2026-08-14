# TradingView multi-indicator

File: [`cpr_vwap_camarilla_suite.pine`](cpr_vwap_camarilla_suite.pine)

Daily **CPR** (KGS-style), **Camarilla** (S3/R3 like the Pivots dialog), **VWAP**, and **moving averages**.

## CPR (Daily only)

Inputs:
- Select Pivot Mode: Manual
- Show Daily CPR (Manual)
- Show Prev Day High
- Show Prev Day Low
- Show Daily R1–R4 / S1–S4

Style tab lists: Daily Pivot, Daily BC, Daily TC (blue), Daily R1–R4 (green), Daily S1–S4 (red), Prev Day High / Low (dark gray).

Weekly / monthly / yearly / next-period CPR are removed.

## Camarilla

Matches the Pivots reference:
- Daily-based values
- 15 pivots back
- Labels + prices on the **left**
- Line width **3**
- **S3** and **R3** on by default, **black**
- P, S1, R1, S2, R2, S4, R4, S5, R5 available, off, orange

## Add to TradingView

Paste the `.pine` file into Pine Editor → Save → Add to chart.
