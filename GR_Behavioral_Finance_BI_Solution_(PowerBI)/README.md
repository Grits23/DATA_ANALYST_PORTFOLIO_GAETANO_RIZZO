# 📊 GR Behavioral Finance BI Solution  
 *An Interactive Power BI Report for Exploring Behavioral Biases in Retail Investors*  
 
---


## 📌 Descrizione  
Questo progetto è il **Capstone finale del percorso Data Analyst (Epicode – DAPT0125)** e consiste in un **report interattivo in Power BI** basato sul dataset **FAR-Trans** (transazioni e asset allocation di investitori retail greci, 2018–2022), integrato con indicatori macroeconomici provenienti dalla **World Bank**.  

L’obiettivo è analizzare i principali **bias cognitivi e comportamentali** che influenzano le decisioni di investimento, fornendo insight utili sia per la ricerca accademica che per l’analisi finanziaria applicata.  

---

## 🎯 Obiettivi del report  
- Identificare i **pattern ricorrenti di investimento** in un campione di investitori retail greci.  
- Valutare la presenza e l’intensità di quattro **bias comportamentali chiave**:  
  - **Disposition Bias**: vendita troppo rapida degli asset vincenti e mantenimento eccessivo di quelli in perdita.  
  - **Overtrading Bias**: tendenza a effettuare troppe operazioni, con riduzione dei rendimenti a lungo termine.  
  - **Herding Bias**: seguire i comportamenti della maggioranza, anche senza analisi razionale.  
  - **Home Bias**: preferenza eccessiva per asset domestici rispetto alla diversificazione internazionale.  
- Collegare i **comportamenti micro (investitori)** con i **trend macroeconomici** (indicatori World Bank).  

---

## 🇮🇹 Processo di realizzazione  

Lo sviluppo del progetto si è articolato in più fasi, seguendo un approccio tipico da **data analyst end-to-end**:  

### 1. Acquisizione dati  
- **Dataset FAR-Trans**: transazioni di investitori retail greci (2018–2022)  
  *(Sanz-Cruzado Puig, J. et al., 2024 – University of Glasgow, DOI: 10.5525/gla.researchdata.1658)*  
- **World Bank Data**: indicatori macroeconomici per la Grecia → [data.worldbank.org](https://data.worldbank.org/topic/economy-and-growth)  

### 2. Pulizia e trasformazione  
- Normalizzazione delle transazioni (ISIN, tipologia asset, valore, data, tipo operazione).  
- Integrazione dei dataset esterni con chiavi temporali (anno).  
- Rimozione duplicati ed errori, uniformazione dei formati.  

### 3. Modellazione dati  
- Creazione di uno **schema relazionale (star schema)** in Power BI.  
- Tabelle di **dimensione**: clienti, asset, anni, settori.  
- Tabella di **fatto**: transazioni.  

### 4. Calcolo dei bias comportamentali  
- **Disposition Bias**: confronto vendite titoli in guadagno vs perdita.  
- **Overtrading Bias**: intensità di transazioni ripetute in un intervallo temporale.  
- **Herding Bias**: concentrazione sugli asset più scambiati.  
- **Home Bias**: peso eccessivo degli asset domestici sul portafoglio totale.  
- Implementazione tramite **DAX measures** e normalizzazioni (percentuali e punteggi).  

### 5. Costruzione del report in Power BI  
- Dashboard strutturate per sezioni: Macroeconomia, Clienti, Bias, Transazioni.  
- Visualizzazioni: **KPI card, line charts, bar charts, treemap, tabelle dettagliate**.  
- Filtri dinamici: anno, cliente, profilo rischio, capacità investimento, asset, settore, paese, tipo transazione.  

### 6. Validazione e testing  
- Controllo coerenza dati (bias nel range 0–100).  
- Ottimizzazione query e calcoli DAX.  

### 7. Output finale  
- File **PBIX** con navigazione guidata.  
- README bilingue per la documentazione.  

---

## 📑 Struttura e pagine del report  

1️⃣ **Home / Overview**  
Visione d’insieme con KPI chiave, distribuzione bias e accesso rapido alle sezioni.  

2️⃣ **Indicatori Macroeconomici**  
Trend 2018–2022 (PIL, inflazione, disoccupazione, export/import, debito, risparmi).  
👉 Utilità: collegare comportamento micro a contesto macro.  

3️⃣ **Customer Analytics**  
Segmentazione per tipo cliente, profilo di rischio, capacità di investimento.  
👉 Utilità: identificare gruppi più soggetti a bias.  

4️⃣ **Asset & Transazioni**  
Analisi per asset class, settore, paese e ISIN.  
👉 Utilità: esplorare concentrazione portafogli e diversificazione.  

5️⃣ **Disposition Bias**  
Tendenza a vendere vincitori troppo presto e mantenere perdenti.  
👉 Utilità: formare alla disciplina decisionale.  

6️⃣ **Overtrading Bias**  
Eccessiva attività di trading.  
👉 Utilità: rilevare investitori troppo sicuri di sé.  

7️⃣ **Herding Bias**  
Comportamenti di imitazione collettiva.  
👉 Utilità: rilevare dinamiche di massa e rischi di bolle.  

8️⃣ **Home Bias**  
Preferenza per asset domestici.  
👉 Utilità: evidenziare gap di diversificazione internazionale.  

9️⃣ **Dashboard comparativa dei Bias**  
Confronto simultaneo dei quattro bias principali.  
👉 Utilità: visione olistica e priorità di intervento.  

🔟 **Customer Profile (Profilo cliente singolo)**  
Analisi micro di un investitore con dettagli su transazioni, portafoglio, rischio e bias individuali.  
👉 Utilità:  
- Per aziende → consulenza personalizzata e individuazione rischi.  
- Per clienti → consapevolezza e auto-valutazione.  
- Per ricerca → confronto micro vs trend aggregati.  

---

## 💡 Conclusioni  

Questo progetto dimostra come la **Business Intelligence** possa essere applicata alla **finanza comportamentale**, trasformando dati complessi in insight chiari e accessibili.  

- L’integrazione di dati reali di transazioni (**FAR-Trans**) con gli indicatori macroeconomici della **World Bank** ha reso possibile un’analisi multilivello: dal contesto economico generale fino al comportamento del singolo cliente.  
- La struttura interattiva del **Power BI Report** permette di esplorare i bias cognitivi (Disposition, Overtrading, Herding, Home Bias) in modo dinamico e comparabile.  

### 📈 Ricadute pratiche  
- **Per le aziende:** segmentazione avanzata, strategie personalizzate, gestione del rischio.  
- **Per i clienti:** autoconsapevolezza, educazione finanziaria, supporto alle decisioni.  

👉 In prospettiva, il progetto può essere esteso ad altri contesti, dataset e mercati, contribuendo a rendere la gestione della finanza personale più **consapevole, trasparente e sostenibile nel lungo termine**.  

---
