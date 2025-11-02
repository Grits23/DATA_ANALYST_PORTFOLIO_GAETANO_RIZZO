# 🧸 GR Toys — Data Warehouse (MySQL)

*(English 🇬🇧 / Italiano 🇮🇹)*

---

## 🇬🇧 English Version

### 📌 Overview

**GR Toys Data Warehouse** is a project developed in **MySQL** to model and analyze sales data of a toy company.
It includes the full pipeline: **conceptual design, logical model, physical implementation, queries, and reporting views**.

---

### 🧩 Data Model

The structure follows a **star schema**, with one fact table and several dimensions:

* **Fact Table:** `Sales` — stores transactions, quantities, prices, and total costs.
* **Dimensions:** `Product`, `ProductCategory`, `Customer`, `Reseller`, `Employee`, `Location`, `Country`, `Region`, and `Time`.

Files:

* 📘 *Conceptual model:* `ProgettazioneConcettuale.png`
* 📗 *Logical model:* `GR_Toys_ModelloLogico_Workbench_PNG.png`
* 📄 *Physical implementation:* `GR_Toys_ImplementazioneFisica.sql`
* 📊 *Queries & views:* `GR_Toys_Queries.sql`

---

### 🧮 Main Queries & Views

The script `GR_Toys_Queries.sql` includes examples of:

* **Data integrity checks** (PK uniqueness)
* **Top products** by sales and year
* **Revenue by region and country**
* **Unsold products**
* **Semantic views** for Power BI / Excel reporting:

  * `GR_View_ToysProducts`
  * `GR_View_ToysGeography`

---

### ▶️ How to Run

```sql
-- Create database and tables
SOURCE ./GR_Toys_ImplementazioneFisica.sql;

-- Run analytics and create views
SOURCE ./GR_Toys_Queries.sql;

-- Check data
SELECT * FROM GR_View_ToysProducts LIMIT 10;
```

---

### 🧰 Tools & Skills

**MySQL**, **SQL DDL/DML**, **Data Modeling**, **Dimensional Design**, **BI Reporting**

---

## 🇮🇹 Versione Italiana

### 📌 Panoramica

**GR Toys Data Warehouse** è un progetto realizzato in **MySQL** per analizzare le vendite di un’azienda di giocattoli.
Include tutte le fasi del processo: **modello concettuale, logico, implementazione fisica, query e viste per la reportistica.**

---

### 🧩 Modello Dati

Lo schema segue un modello **a stella**, con una tabella dei fatti e diverse dimensioni:

* **Fatti:** `Sales` — contiene le transazioni, quantità e prezzi.
* **Dimensioni:** `Product`, `ProductCategory`, `Customer`, `Reseller`, `Employee`, `Location`, `Country`, `Region`, `Time`.

File principali:

* 📘 *Modello concettuale:* `ProgettazioneConcettuale.png`
* 📗 *Modello logico:* `GR_Toys_ModelloLogico_Workbench_PNG.png`
* 📄 *Implementazione fisica:* `GR_Toys_ImplementazioneFisica.sql`
* 📊 *Query e viste:* `GR_Toys_Queries.sql`

---

### 🧮 Query e Viste Principali

Il file `GR_Toys_Queries.sql` contiene esempi di:

* **Verifica univocità chiavi primarie**
* **Prodotti più venduti** per anno
* **Ricavi per regione e paese**
* **Prodotti invenduti**
* **Viste semantiche** per dashboard:

  * `GR_View_ToysProducts`
  * `GR_View_ToysGeography`

---

### ▶️ Come Eseguire

```sql
-- Creazione database e tabelle
SOURCE ./GR_Toys_ImplementazioneFisica.sql;

-- Query analitiche e viste
SOURCE ./GR_Toys_Queries.sql;

-- Controllo risultati
SELECT * FROM GR_View_ToysProducts LIMIT 10;
```

---

### 🧰 Strumenti e Competenze

**MySQL**, **SQL**, **Modellazione Dati**, **Schema a Stella**, **Analisi BI**
