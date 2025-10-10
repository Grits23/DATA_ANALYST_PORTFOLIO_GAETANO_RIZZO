# 🚴 AdventureWorks Sales Report (Looker Studio + SQL)
*(English 🇬🇧 / Italiano 🇮🇹)*

---

## 🇬🇧 English Version  

### 📌 Overview  
This project presents a **Looker Studio dashboard** connected via **custom SQL query** to the **AdventureWorksDW database**, the classic Microsoft dataset for business intelligence practice.  
The report analyzes **sales performance**, **profitability**, and **product distribution** across regions, categories, and time periods.

The goal is to create a **dynamic and interactive BI solution** integrating SQL-based data extraction and visualization design in Looker Studio.

---

### 🧩 Data & Query Source  
Data were retrieved from the **AdventureWorksDW2019** database using the following SQL query:

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
JOIN dimproduct AS P ON P.ProductKey = RS.ProductKey
JOIN dimproductsubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
JOIN dimproductcategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
JOIN dimsalesterritory AS ST ON ST.SalesTerritoryKey = RS.SalesTerritoryKey
JOIN dimreseller AS R ON R.ResellerKey = RS.ResellerKey
JOIN dimgeography AS G ON G.GeographyKey = R.GeographyKey;
🔗 File: LOOKER_ADW_QUERY.sql

This query joins factResellerSales with key dimension tables to build a comprehensive dataset with geographic, product, and financial details.

📊 Report Structure
Sales & Orders Over Time

Quarterly and yearly visualization of SalesAmount and OrderQuantity.

Highlights business peaks between 2018 and 2020.

Profit Analysis

Profit calculated as the difference between SalesAmount and TotalProductCost.

Detects slight seasonal fluctuations and negative margins in some periods.

Product Categories

Distribution by CategoryName and SubcategoryName.

Bikes dominate with 82.6% of total sales, followed by Components and Clothing.

Subcategories such as Road Bikes, Mountain Bikes, and Touring Bikes lead the market.

Geographical Insights

Interactive map view linking Region and City to sales volumes.

Identifies high-performing cities and regions with potential for expansion.

💡 Key Metrics
KPI	Value
Total Sales Amount	€77.5M
Total Product Cost	€76.4M
Profit	€993K
Order Quantity	204,114

🧠 Insights
The bike segment drives most of the company’s revenue, suggesting strong brand positioning in outdoor and sport categories.

Margins remain limited, pointing to potential over-discounting or logistic costs.

High geographic variability suggests opportunities for regional market optimization.

🧰 Tools & Skills
SQL, Looker Studio, Data Modeling, KPI Design, Dashboard Storytelling, AdventureWorksDW Dataset

🔗 Resources
📊 Dashboard: Looker Studio Interactive Report (via SQL connection)

🧮 Query file: LOOKER_ADW_QUERY.sql

📘 Dataset: AdventureWorksDW2019 (Microsoft)

🎓 Project by Gaetano Rizzo — Epicode Data Analyst Bootcamp (DAPT0125)

🇮🇹 Versione Italiana
📌 Panoramica
Questo report in Looker Studio è connesso tramite query SQL personalizzata al database AdventureWorksDW, il dataset di riferimento Microsoft per la business intelligence.
Analizza le performance di vendita, la redditività e la distribuzione dei prodotti per categoria, area geografica e periodo.

L’obiettivo è realizzare una dashboard dinamica e interattiva, unendo estrazione dati via SQL e design visivo in Looker Studio.

🧩 Dati e Query
I dati provengono dal database AdventureWorksDW2019, interrogato con la seguente query SQL:

sql
Copia codice
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
JOIN dimproduct AS P ON P.ProductKey = RS.ProductKey
JOIN dimproductsubcategory AS PS ON PS.ProductSubcategoryKey = P.ProductSubcategoryKey
JOIN dimproductcategory AS PC ON PC.ProductCategoryKey = PS.ProductCategoryKey
JOIN dimsalesterritory AS ST ON ST.SalesTerritoryKey = RS.SalesTerritoryKey
JOIN dimreseller AS R ON R.ResellerKey = RS.ResellerKey
JOIN dimgeography AS G ON G.GeographyKey = R.GeographyKey;
🔗 File: LOOKER_ADW_QUERY.sql

📊 Struttura del Report
Vendite e Ordini nel Tempo

Andamento trimestrale e annuale di SalesAmount e OrderQuantity.

Picchi di attività tra il 2018 e il 2020.

Analisi dei Profitti

Profitto calcolato come differenza tra SalesAmount e TotalProductCost.

Alcuni periodi mostrano margini negativi, suggerendo costi operativi elevati.

Categorie di Prodotto

Distribuzione per CategoryName e SubcategoryName.

Il segmento Bikes rappresenta oltre l’80% delle vendite.

Analisi Geografica

Mappa interattiva con City e Region legate al volume vendite.

Evidenzia le aree più redditizie e quelle con margine di crescita.

💡 Indicatori Principali
KPI	Valore
Vendite Totali	€77,5M
Costi Prodotti	€76,4M
Profitto	€993K
Quantità Ordini	204.114

🧠 Insight
Le biciclette rappresentano il core business aziendale.

Margini ridotti → possibile necessità di revisione prezzi o riduzione costi logistici.

Ampia variabilità geografica → potenziale ottimizzazione delle aree di vendita.

🧰 Strumenti Utilizzati
SQL, Looker Studio, Data Modeling, KPI Design, Dashboard Storytelling, AdventureWorksDW Dataset

🔗 Risorse
📊 Dashboard: Report interattivo Looker Studio (connessione SQL)

🧮 File query: LOOKER_ADW_QUERY.sql

📘 Dataset: AdventureWorksDW2019 (Microsoft)

🎓 Progetto realizzato da Gaetano Rizzo — Epicode Data Analyst Bootcamp (DAPT0125)

© 2025 Gaetano Rizzo – Behavioral & Data Analytics Portfolio
