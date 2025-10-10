# 🛒 Olist Project — Power BI Marketplace Analytics  
*(English 🇬🇧 / Italiano 🇮🇹)*  

---

## 🇬🇧 English Version  

### 📌 Overview  
This Power BI project analyzes data from the **Brazilian e-commerce marketplace Olist** to identify **purchase patterns**, **logistic performance**, **payment behaviors**, and **customer experience insights**.  
The goal was to transform raw transactional data into actionable business intelligence to support **marketing**, **operations**, and **customer satisfaction strategies**.

---

### 🧩 Data Model & Method  
- Imported and profiled **9 CSV tables** (orders, payments, sellers, products, customers, reviews, etc.).  
- Performed **data cleaning and transformation** in Power Query (handling nulls, formatting datatypes, removing duplicates, merging datasets).  
- Built a **Calendar Table** to synchronize date fields across tables.  
- Designed a **Star Schema** for efficient relationships and queries:  

  **Fact Tables:**  
  - `olist_orders_FACT`: core of the model, containing key order events (order, delivery, status) and computed KPIs (e.g., On_Time_Delivery).  
  - `olist_order_items_FACT`: detailed records for ordered products and associated costs (price, freight).  

  **Dimension Tables:**  
  - `olist_customers_DIM`, `olist_sellers_DIM`, `olist_products_DIM`, `olist_order_payments_DIM`, `calendar_DIM`.  

---

### 🧮 Key DAX Measures  
- **Time Analysis:**  
  - `OrderQuantity`, `OrdersPY`, `SalesPY`, `VarPercOrders`, `VarPercSales`  
- **Sales & Revenue:**  
  - `Sales`, `GrossPayments`, `Markup`, `ShippingCosts`  
- **Logistics:**  
  - `%_OnTimeRate`, `OnTimeDeliveries`, `DelayedDeliveries`, `Costs_Freight`  
- **Payments:**  
  - `Avg_Payment_Per_Installment`  

---

### 📊 Report Structure  
The interactive report is structured into **five thematic pages**, each with slicers (year, month, order status) and KPIs at the top:  

1. **Orders** → Monthly trend, order status, category distribution, and geographic map.  
   - 🧠 *Insights:* 2018 shows the highest order volume; São Paulo leads in total orders.  
2. **Sales** → Revenue trends, YoY comparison, KPIs (markup, shipping), sales map.  
   - *Highest sales from “Health & Beauty” and “Bed Bath Table” categories.*  
3. **Reviews** → Customer feedback analysis (average rating = 4.03), sentiment, and word cloud.  
   - *Low ratings in “Security & Services” (2.5), top in “CDs, DVDs, Musicals” (4.64).*  
4. **Deliveries** → Punctuality and delay metrics by category and region.  
   - *92% of deliveries on time; main delays in Nov 2017 & Feb–Mar 2018.*  
5. **Payments** → Comparison between sales and payments, average installments, and preferred methods.  
   - *Most used payment: Credit Card (≈ 2.85 installments on average).*  

---

### 💡 Key Findings  
- Business volume increased in 2018, especially early in the year.  
- Declining growth trend from mid-2018 may require further investigation.  
- Delivery punctuality (92%) is high but uneven across categories.  
- The “Security & Services” category shows low customer satisfaction and should be prioritized for quality improvement.  

---

### 🧰 Tools & Skills  
**Power BI**, **Power Query**, **DAX**, **Data Modeling (Star Schema)**, **KPI Design**, **Storytelling in BI**  

📁 Dataset: Olist e-commerce public dataset  
📅 Period analyzed: 2017–2018  

---

### 🔗 Resources  
- 🔗 [Full Repository on GitHub](https://github.com/Grits23/EPICODE_POWERBI_DAPT_0125)  
- 📊 Report designed by *Gaetano Rizzo* — Epicode Data Analyst Bootcamp (DAPT0125)

---

## 🇮🇹 Versione Italiana  

### 📌 Panoramica  
Questo progetto Power BI analizza i dati del **marketplace brasiliano Olist** per individuare **pattern di acquisto**, **performance logistiche**, **comportamenti di pagamento** e **indicatori di customer experience**.  
L’obiettivo è trasformare dati transazionali grezzi in insight strategici utili per **marketing**, **operations** e **customer satisfaction**.

---

### 🧩 Modello Dati e Metodo  
- Importate e profilate **9 tabelle CSV** (ordini, pagamenti, clienti, venditori, prodotti, recensioni ecc.).  
- Effettuate operazioni di **data cleaning e trasformazione** in Power Query (gestione null, formati data, merge tra tabelle).  
- Creata una **Calendar Table** per sincronizzare i campi data.  
- Progettato uno **Star Schema** per ottimizzare le relazioni e le performance:  

  **Tabelle dei Fatti:**  
  - `olist_orders_FACT`: eventi chiave dell’acquisto e misura `On_Time_Delivery`.  
  - `olist_order_items_FACT`: dettaglio ordini e costi associati.  

  **Tabelle Dimensionali:**  
  - `olist_customers_DIM`, `olist_sellers_DIM`, `olist_products_DIM`, `olist_order_payments_DIM`, `calendar_DIM`.

---

### 🧮 Principali Misure DAX  
- **Analisi temporale:** `OrderQuantity`, `OrdersPY`, `SalesPY`, `VarPercOrders`, `VarPercSales`  
- **Vendite e ricavi:** `Sales`, `GrossPayments`, `Markup`, `ShippingCosts`  
- **Performance logistica:** `%_OnTimeRate`, `OnTimeDeliveries`, `DelayedDeliveries`, `Costs_Freight`  
- **Pagamenti:** `Avg_Payment_Per_Installment`  

---

### 📊 Struttura del Report  
Il report è articolato in **cinque sezioni interattive** con slicer per anno, mese e stato ordine:  

1. **Orders** → andamento mensile, stato, mappa e indicatori.  
   - 🧠 *Insight:* 2018 è l’anno con più ordini; lo stato di São Paulo primeggia.  
2. **Sales** → andamento vendite, confronto anno precedente, KPI economici.  
   - *Le categorie “Health & Beauty” e “Bed Bath Table” generano i maggiori ricavi.*  
3. **Reviews** → analisi punteggi e sentiment (media voto = 4,03).  
   - *“Security & Services” ha il rating più basso (2,5); “CDs DVDs Musicals” il più alto (4,64).*  
4. **Deliveries** → puntualità consegne per area e categoria.  
   - *Il 92% delle consegne è puntuale; ritardi principali a novembre 2017 e marzo 2018.*  
5. **Payments** → analisi pagamenti vs vendite, numero medio di rate, metodi preferiti.  
   - *Metodo più usato: carta di credito (media 2,85 rate).*  

---

### 💡 Principali Risultati  
- Volume d’affari in aumento nel 2018 ma con rallentamento da metà anno.  
- Elevata puntualità delle consegne (92%) ma differenze tra categorie.  
- Categoria “Security & Services” con bassa soddisfazione cliente → area critica da migliorare.  

---

### 🧰 Strumenti Utilizzati  
**Power BI**, **Power Query**, **DAX**, **Data Modeling (Star Schema)**, **Data Storytelling**  

📁 Dataset: Olist Public Dataset  
📅 Periodo analizzato: 2017–2018  

---

### 🔗 Risorse  
- 🔗 [Repository completa su GitHub](https://github.com/Grits23/EPICODE_POWERBI_DAPT_0125)  
- 📊 Progetto realizzato da *Gaetano Rizzo* — Epicode Data Analyst Bootcamp (DAPT0125)

---

© 2025 Gaetano Rizzo – Behavioral & Data Analytics Portfolio

