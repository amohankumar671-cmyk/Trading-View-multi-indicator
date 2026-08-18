# TradingView multi-indicator

Files:
- [`cpr_vwap_camarilla_suite.pine`](cpr_vwap_camarilla_suite.pine) — Daily **CPR** (KGS-style), **Camarilla**, **VWAP**, **moving averages**, and **AlphaTrend** (KivancOzbilgic, MPL 2.0). No volume profile.
- [`volume_profile.pine`](volume_profile.pine) — Session **volume profile** (POC / VAH / VAL) as a separate overlay.

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

File: [`volume_profile.pine`](volume_profile.pine)

Add this as a **second** indicator. It is not part of the CPR suite.

Intraday **session volume profile** on 1–15 minute charts:
- Splits the session high–low into rows and drops each bar’s volume into the rows it traded through
- Marks **POC** (highest-volume row), **VAH** / **VAL** (70% value area by default), and a right-edge histogram
- Keeps **previous session** POC / VAH / VAL as dotted circles
- Checks whether price is inside value, testing POC, or breaking VAH/VAL
- **BUY / SELL** on a *strong* break: close leaves value, bar change ≥ ATR × multiplier, and volume ≥ average (defaults use **previous session** VAH/VAL because today’s levels still move)
- Status table and alerts for those events

These signals are a filter for imbalance after value, not a complete system. False breaks are common at the open and around news; use a stop (for example back inside the value area).

## Add to TradingView

Paste a `.pine` file into Pine Editor → Save → Add to chart.

- CPR / Camarilla / VWAP / MAs / AlphaTrend: `cpr_vwap_camarilla_suite.pine`
- Volume profile: `volume_profile.pine`
