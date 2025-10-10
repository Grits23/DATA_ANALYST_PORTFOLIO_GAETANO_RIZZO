
---

# 🚴 AdventureWorks Sales Report (Looker Studio + SQL)

*(English 🇬🇧 / Italiano 🇮🇹)*

---

## 🇬🇧 English Version

### 📌 Overview

This project presents a **Looker Studio dashboard** connected via a **custom SQL query** to the **AdventureWorksDW2019** database, a classic Microsoft dataset for business intelligence practice.
The report analyzes **sales performance**, **profitability**, and **product distribution** across regions, categories, and time periods.

The goal was to create a **dynamic BI dashboard** that integrates SQL-based data extraction with interactive visualization design.

---

### 🧩 Data Source

* **Database:** AdventureWorksDW2019
* **Connection Type:** Custom SQL query
* **Visualization Tool:** Looker Studio
* **Dataset Theme:** Reseller sales data (FactResellerSales)

---

### 🧮 Query Used

> The following query joins sales facts with product, geography, and reseller dimensions to extract a complete analytical dataset.

```sql
SELECT 
    G.City, 
    G.EnglishCountryRegionName AS Region,
    RS.SalesOrderNumber,
    RS.SalesOrderLineNumber,
    RS.OrderQuantity,
    RS.UnitPrice,
    RS.TotalProductCost,
    RS.SalesAmount,
    RS.OrderDate,
    P.EnglishProductName AS ProductName,
    PC.EnglishProductCategoryName AS CategoryName,
    PS.EnglishProductSubcategoryName AS SubcategoryName
FROM factresellersales AS RS
JOIN dimproduct AS P 
    ON P.ProductKey = RS.ProductKey
JOIN dimproductsubcategory AS PS 
    ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
JOIN dimproductcategory AS PC 
    ON PC.ProductCategoryKey = PS.ProductCategoryKey
JOIN dimsalesterritory AS ST 
    ON ST.SalesTerritoryKey = RS.SalesTerritoryKey
JOIN dimreseller AS R 
    ON R.ResellerKey = RS.ResellerKey
JOIN dimgeography AS G 
    ON G.GeographyKey = R.GeographyKey
;
```

---

### 📊 Dashboard Structure

1. **Sales & Orders Over Time**

   * Quarterly and yearly trends for `SalesAmount` and `OrderQuantity`.
   * Clear growth pattern between 2018 and 2020.

2. **Profit Analysis**

   * Computed as `SalesAmount - TotalProductCost`.
   * Highlights fluctuations and periods of negative margin.

3. **Product Categories**

   * Breakdown by `CategoryName` and `SubcategoryName`.
   * *Bikes* dominate sales (≈82%), followed by *Components* and *Clothing*.

4. **Geographical Insights**

   * Interactive map visualizing total sales by `City` and `Region`.

---

### 💡 Key Metrics

| KPI                    | Value   |
| ---------------------- | ------- |
| **Total Sales Amount** | €77.5M  |
| **Total Product Cost** | €76.4M  |
| **Profit**             | €993K   |
| **Order Quantity**     | 204,114 |

---

### 🧠 Insights

* **Bikes** are the company’s top-selling product line.
* Profit margins are thin, suggesting possible logistic or pricing issues.
* Regional variation in sales reveals potential for targeted marketing.

---

### 🧰 Tools & Skills

**SQL**, **Looker Studio**, **Data Modeling**, **KPI Design**, **Dashboard Storytelling**, **AdventureWorksDW Dataset**

---

### 🔗 Resources

* 📊 Dashboard: *Interactive Looker Studio Report (SQL connection)*
* 🧮 Query file: [`LOOKER_ADW_QUERY.sql`](./LOOKER_ADW_QUERY.sql)
* 📘 Dataset: *AdventureWorksDW2019 (Microsoft)*
* 🎓 Project by *Gaetano Rizzo* — Epicode Data Analyst Bootcamp (DAPT0125)

---

## 🇮🇹 Versione Italiana

### 📌 Panoramica

Questo progetto presenta un **report in Looker Studio** collegato tramite **query SQL personalizzata** al database **AdventureWorksDW2019**, il dataset di riferimento Microsoft per la business intelligence.
Il report analizza **vendite**, **profitti** e **categorie di prodotto** per area geografica e periodo temporale.

L’obiettivo è creare una **dashboard interattiva** che unisca estrazione SQL e visualizzazione dati efficace.

---

### 🧩 Origine dei Dati

* **Database:** AdventureWorksDW2019
* **Tipo di connessione:** Query SQL personalizzata
* **Strumento di visualizzazione:** Looker Studio
* **Contenuto:** Dati sulle vendite dei rivenditori (FactResellerSales)

---

### 🧮 Query Utilizzata

> La seguente query unisce le tabelle dei fatti e delle dimensioni per creare un dataset completo, utile all’analisi geografica e di prodotto.

```sql
SELECT 
    G.City, 
    G.EnglishCountryRegionName AS Region,
    RS.SalesOrderNumber,
    RS.SalesOrderLineNumber,
    RS.OrderQuantity,
    RS.UnitPrice,
    RS.TotalProductCost,
    RS.SalesAmount,
    RS.OrderDate,
    P.EnglishProductName AS ProductName,
    PC.EnglishProductCategoryName AS CategoryName,
    PS.EnglishProductSubcategoryName AS SubcategoryName
FROM factresellersales AS RS
JOIN dimproduct AS P 
    ON P.ProductKey = RS.ProductKey
JOIN dimproductsubcategory AS PS 
    ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
JOIN dimproductcategory AS PC 
    ON PC.ProductCategoryKey = PS.ProductCategoryKey
JOIN dimsalesterritory AS ST 
    ON ST.SalesTerritoryKey = RS.SalesTerritoryKey
JOIN dimreseller AS R 
    ON R.ResellerKey = RS.ResellerKey
JOIN dimgeography AS G 
    ON G.GeographyKey = R.GeographyKey
;
```

---

### 📊 Struttura del Report

1. **Vendite e Ordini nel Tempo**

   * Andamento trimestrale e annuale di `SalesAmount` e `OrderQuantity`.
   * Picchi tra il 2018 e il 2020.

2. **Analisi dei Profitti**

   * Calcolato come differenza tra `SalesAmount` e `TotalProductCost`.
   * Alcuni trimestri mostrano margini negativi.

3. **Categorie di Prodotto**

   * Analisi per `CategoryName` e `SubcategoryName`.
   * Le *Bikes* rappresentano circa l’82% delle vendite.

4. **Analisi Geografica**

   * Mappa interattiva per città e regione con volumi di vendita.

---

### 💡 Indicatori Principali

| KPI                 | Valore  |
| ------------------- | ------- |
| **Vendite Totali**  | €77,5M  |
| **Costi Prodotti**  | €76,4M  |
| **Profitto**        | €993K   |
| **Quantità Ordini** | 204.114 |

---

### 🧠 Insight

* Le **biciclette** costituiscono il core business dell’azienda.
* I margini ridotti suggeriscono di ottimizzare prezzi e costi logistici.
* Esistono differenze geografiche che offrono margine di miglioramento strategico.

---

### 🧰 Strumenti Utilizzati

**SQL**, **Looker Studio**, **Data Modeling**, **KPI Design**, **Dashboard Storytelling**, **AdventureWorksDW Dataset**

---

### 🔗 Risorse

* 📊 Dashboard: *Report interattivo Looker Studio (connessione SQL)*
* 🧮 File query: [`LOOKER_ADW_QUERY.sql`](./LOOKER_ADW_QUERY.sql)
* 📘 Dataset: *AdventureWorksDW2019 (Microsoft)*
* 🎓 Progetto realizzato da *Gaetano Rizzo* — Epicode Data Analyst Bootcamp (DAPT0125)

---

© 2025 Gaetano Rizzo – Behavioral & Data Analytics Portfolio

---

Ora è perfetto per GitHub: i blocchi SQL restano formattati, mentre il resto mantiene titoli, emoji e tabelle correttamente.
Vuoi che ti aggiunga anche una versione **miniatura del banner Looker Studio** (quella che abbiamo creato) all’inizio, sopra il titolo?


