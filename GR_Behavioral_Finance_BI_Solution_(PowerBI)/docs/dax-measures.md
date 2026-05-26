# DAX Measures Documentation

## Overview

This document contains the main DAX measures used in the **GR Behavioral Finance BI Solution** Power BI report.

The measures are designed to operationalize behavioral finance indicators in a Power BI environment.

These indicators should be interpreted as analytical proxies for exploratory business intelligence analysis, not as financial advice or validated psychological scores.

---

## Disposition Bias

### Analytical Definition

Disposition Bias refers to the tendency to sell winning assets too early while holding losing assets too long.

### DAX Measure

```DAX
DispositionEffect = 
VAR Gains =
    CALCULATETABLE (
        Short_Termism,
        Short_Termism[ProfitPct] > 0
    )
VAR Losses =
    CALCULATETABLE (
        Short_Termism,
        Short_Termism[ProfitPct] < 0
    )
VAR GainSellRatio =
    DIVIDE ( COUNTROWS ( Gains ), COUNTROWS ( Short_Termism ) )
VAR LossSellRatio =
    DIVIDE ( COUNTROWS ( Losses ), COUNTROWS ( Short_Termism ) )
RETURN
    ( GainSellRatio - LossSellRatio ) * 100

```
Normalized Score:
```
Disposition Bias = 
VAR raw = [DispositionEffect]   -- valori da –100 a +100
RETURN
    50 + DIVIDE ( raw, 2, 0 )

```

### Interpretation

Higher values suggest a stronger tendency toward asymmetric selling behavior between winning and losing positions.

---

## Overtrading Bias

### Analytical Definition

Overtrading Bias refers to excessive trading activity relative to the investor profile or portfolio behavior.

### DAX Measure

```DAX
Overtrading = 
VAR TotTx = CALCULATE(COUNTROWS(transactions))
VAR TotInvestito = CALCULATE(SUM(transactions[totalValue]), transactions[transactionType] = "Buy")
VAR TxPerEuro = DIVIDE(TotTx, TotInvestito)
VAR MediaGlobale = 
    CALCULATE(
        AVERAGEX(
            VALUES(customer_information[customerID]),
            VAR t = CALCULATE(COUNTROWS(transactions))
            VAR v = CALCULATE(SUM(transactions[totalValue]), transactions[transactionType] = "Buy")
            RETURN DIVIDE(t, v)
        ),
        ALL(customer_information)
    )
RETURN DIVIDE(TxPerEuro, MediaGlobale)*100

```
Normalized Score:
```
Overtrading Bias = 
VAR Curr = [Overtrading]  -- valore del cliente nel contesto corrente
VAR Tbl =
    FILTER(
        ADDCOLUMNS(
            ALL( customer_information[CustomerID] ),     -- ignora il filtro sul cliente
            "Val", CALCULATE( [Overtrading] )           -- valuta Overtrading per OGNI cliente
        ),
        NOT ISBLANK( [Val] )
    )
VAR N  = COUNTROWS( Tbl )
VAR Rk = RANKX( Tbl, [Val], Curr, ASC, DENSE )
RETURN IF( N <= 1 || ISBLANK( Curr ), BLANK(), DIVIDE( Rk - 1, N - 1 ) * 100 )

```

### Interpretation

Higher values indicate greater trading intensity.

---

## Herding Bias

### Analytical Definition

Herding Bias reflects the tendency to concentrate investments around assets that are highly traded by other investors.

### DAX Measure

```DAX
HerdingScore = 
VAR Top10 =
    TOPN(
        10,
        ADDCOLUMNS(
            VALUES( transactions[ISIN] ),
            "TxCount", CALCULATE( COUNTROWS( transactions ) )
        ),
        [TxCount], DESC
    )
VAR ISINList = SELECTCOLUMNS( Top10, "ISIN", [ISIN] )
VAR TxTop10 =
    CALCULATE(
        COUNTROWS( transactions ),
        KEEPFILTERS(
            FILTER( transactions, transactions[ISIN] IN ISINList )
        )
    )
VAR TotalTx = COUNTROWS( transactions )
RETURN DIVIDE( TxTop10, TotalTx ) *100

```
Normalized Score:
```
Herding Bias = 
 VAR p   = MAX ( 0, [HerdingScore] )
        VAR p01 = IF ( p > 1, DIVIDE ( p, 100 ), p )
        VAR raw = 100 * MIN ( MAX ( p01, 0 ), 1 )
     RETURN raw

```

### Interpretation

Higher values suggest stronger alignment with collective trading patterns.

---

## Home Bias

### Analytical Definition

Home Bias refers to the preference for domestic assets over internationally diversified assets.

### DAX Measure

```DAX
HomeBiasPercent = 
VAR InvestimentiDomestici = 
    CALCULATE(
        SUM(transactions[totalValue]),
        FILTER(
            transactions,
            RELATED(markets[country]) = "Greece"
        )
    )
VAR InvestimentiTotali = SUM(transactions[totalValue])
RETURN DIVIDE(InvestimentiDomestici, InvestimentiTotali) * 100

```
Normalized Score: 
```
Home Bias = 
VAR p   = [HomeBiasPercent]
VAR p01 = IF ( p > 1, DIVIDE ( p, 100 ), p )
RETURN 100 * MIN ( MAX ( p01, 0 ), 1 )

```

### Interpretation

Higher values indicate greater domestic portfolio concentration.

---

## Methodological Note

The behavioral bias indicators are simplified operational measures designed for portfolio demonstration and exploratory analysis.

They should not be interpreted as validated financial, psychological or clinical scores.
