# TradingView multi-indicator

Files:
- [`cpr_vwap_camarilla_suite.pine`](cpr_vwap_camarilla_suite.pine) — Daily **CPR** (KGS-style), **Camarilla**, **VWAP**, **moving averages**, and **AlphaTrend** (KivancOzbilgic, MPL 2.0).
- [`volume_profile_checker.pine`](volume_profile_checker.pine) — Session **volume profile** (POC / VAH / VAL) with checks against VWAP and CPR from the suite.

## CPR (Daily only)

Inputs:
- Select Pivot Mode: Manual
- Show Daily CPR (Manual)
- Show Prev Day High
- Show Prev Day Low
- Show Daily R1–R4 / S1–S4

Daily CPR follows **CPR by KGS**: dotted circle plots, blue CPR band, green R1–R4, red S1–S4, black Prev Day High/Low. Price-scale labels use those plot titles (Daily TC, Daily Pivot, Daily BC, …).

Weekly / monthly / yearly / next-period CPR are removed.

## Volume Profile Checker

File: [`volume_profile_checker.pine`](volume_profile_checker.pine)

Intraday **session volume profile** built from the same daily session, VWAP, and CPR helpers as the suite. Use it on 1–15 minute charts (a daily bar has no profile to build).

It:
- Splits the session high–low into rows and drops each bar’s volume into the rows it traded through
- Marks **POC** (highest-volume row), **VAH** / **VAL** (70% value area by default), and a right-edge histogram
- Keeps **previous session** POC / VAH / VAL as dotted circles
- **Checks** whether price is inside value, testing POC, or breaking VAH/VAL
- **Checks confluence** with daily VWAP and CPR (VWAP near POC, CPR pivot inside value, optional Camarilla S3/R3 vs VAL/VAH)
- Shows a status table and alertconditions for those checks

Paste it as a second indicator, or use it alone with CPR/VWAP overlays enabled.

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

## Add to TradingView

Paste a `.pine` file into Pine Editor → Save → Add to chart. Use `cpr_vwap_camarilla_suite.pine` for CPR / Camarilla / VWAP / MAs / AlphaTrend, and `volume_profile_checker.pine` when you need session volume-profile levels and confluence checks.
