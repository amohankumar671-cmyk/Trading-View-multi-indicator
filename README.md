# TradingView multi-indicator

Pine Script v6 overlay that combines **CPR**, **VWAP**, **Camarilla pivots**, **multi-timeframe moving averages**, **RSI**, and **Supertrend**. Each module can be turned on or off independently.

Script: [`indicators/cpr_vwap_camarilla_suite.pine`](indicators/cpr_vwap_camarilla_suite.pine)

## Add it to TradingView

1. Open [TradingView](https://www.tradingview.com/) and any chart.
2. Open the **Pine Editor** (bottom panel).
3. Paste the contents of `indicators/cpr_vwap_camarilla_suite.pine`.
4. Click **Save**, then **Add to chart**.

## Enable only what you want

Open indicator settings. Group **1) Enable modules** has a checkbox for every tool:

| Module | What it draws |
| --- | --- |
| CPR | Previous-period Top (TC), central pivot, Bottom (BC), optional zone fill |
| VWAP | Session VWAP with optional 1σ / 2σ bands |
| Camarilla | H4/L4 and H3/L3 by default; H1–H2, H5/L5, and PP are optional |
| Moving averages | Four independent MAs (type, length, timeframe, color) |
| RSI | Overbought / oversold markers, optional bar coloring, live value in the dashboard |
| Supertrend | Trend line, flips, optional fill |
| Dashboard | Corner table with price vs CPR / VWAP / Camarilla, RSI, Supertrend, MA values |

Leave a module unchecked and it will not plot. Sub-toggles (for example individual Camarilla levels or a single MA) are in that module’s settings group.

## Multi-timeframe

- **CPR** and **Camarilla** default to the **Daily** previous bar (`D`). Switch the timeframe input to `W` or `M` for weekly / monthly levels.
- **MA 1–4**, **RSI**, and **Supertrend** each have their own timeframe. Blank = current chart. Example: chart on 5 minutes, MA 3 = Daily 50 SMA, RSI = 15-minute.

MA types: SMA, EMA, WMA, HMA, VWMA, RMA.

## Defaults

- MA 1: 9 EMA (chart)
- MA 2: 21 EMA (chart)
- MA 3: 50 SMA (daily)
- MA 4: 200 SMA (daily), off
- RSI: 14, OB 70 / OS 30
- Supertrend: ATR 10, factor 3

## Alerts

Create alerts from the indicator: Supertrend flips, RSI entering OB/OS, VWAP crosses, CPR breakouts, Camarilla H4 / L4 breaks.

## Notes

- VWAP needs volume. On symbols with no volume it falls back to the VWAP source price.
- CPR / Camarilla use the **previous completed** bar of the selected timeframe so the current day’s levels stay fixed.
- This is a charting overlay, not a strategy and not financial advice.
