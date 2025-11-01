# 🧬 Report COVID-19 (Python / Excel)

*(English 🇬🇧 / Italiano 🇮🇹)*

---

## 🇬🇧 English Version

### 📌 Overview

This project combines **Python-based data analysis** and **Excel reporting** to explore the evolution and impact of the COVID-19 pandemic at both global and national levels.

It includes two complementary analyses:

1. **Global Report (Python)** — Conducted using the [Our World in Data](https://github.com/owid/covid-19-data) dataset, focusing on worldwide and continental trends in cases, deaths, ICU occupancy, vaccination rates, and governmental measures.
2. **XYFarma Report (Excel)** — A business-oriented case study based on Italian data from the *Ministero della Salute*, evaluating vaccine effectiveness, healthcare costs, and regional mortality.

---

### 🧩 Data Sources

| Dataset                   | Source                                                                                                                                                           | Format | Description                                                                     |
| ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ------------------------------------------------------------------------------- |
| **Global COVID-19 Data**  | [Our World in Data – COVID-19](https://github.com/owid/covid-19-data/tree/master/public/data)                                                                    | CSV    | Global daily data on cases, deaths, testing, vaccinations, and policy measures. |
| **Italian COVID-19 Data** | [Ministero della Salute – Dati COVID-19 Italia](https://dati-covid.italia.it/) & [COVID-19 Opendata Vaccini](https://github.com/italia/covid19-opendata-vaccini) | CSV    | Regional data on infections, recoveries, vaccinations, and hospital costs.      |

---

### 🧠 Objectives

* Describe the **temporal evolution** of COVID-19 worldwide and by continent.
* Compare **infection and recovery trends** across Italian regions.
* Evaluate **vaccine effectiveness** in reducing mortality.
* Analyze **ICU and hospital capacity** in relation to vaccination rates.
* Assess **economic implications** for public health systems.

---

### 🧮 Methods & Tools

**Languages & Libraries:**
`Python 3`, `Pandas`, `NumPy`, `Matplotlib`, `Seaborn`

**Methodological Steps:**

1. **Data Cleaning & Transformation** → Formatting dates, removing nulls, normalizing variables.
2. **Exploratory Data Analysis (EDA)** → Aggregations by region, continent, and vaccine type.
3. **Visualization & Insight Generation** → Time-series trends, bar and box plots.
4. **Excel Dashboard (XYFarma)** → Pivot charts comparing costs and outcomes by vaccine and region.

---

### 📊 Main Findings

#### 🌍 Global Analysis (Our World in Data)

* **Asia (38.8%)** and **Europe (32.6%)** accounted for most global cases.
* Italy’s 2022 trends show strong seasonal peaks (January, July).
* ICU occupancy highest in France, followed by Germany and Italy.
* **Stringency Index** confirms Italy’s restrictive measures were among the strictest relative to ICU load.

#### 🇮🇹 XYFarma Case Study (Excel)

* **Regions most affected:** Lombardy, Veneto, Campania, Lazio.
* **mRNA vaccines (Pfizer, Moderna)** associated with the lowest mortality rates.
* **Vector vaccines (AstraZeneca)** show higher mortality ratios.
* **Economic implication:** investing in mRNA technology yields both clinical and cost benefits.

---

### 📈 Key Performance Indicators (KPIs)

| KPI                              | Definition                                      |
| -------------------------------- | ----------------------------------------------- |
| **Δ Mortality per Vaccine Type** | Mortality rate among vaccinated by manufacturer |
| **ICU Admission Rate**           | ICU patients / total hospitalized               |
| **ICU Utilization Rate**         | ICU patients / population                       |
| **Stringency to ICU Ratio**      | Government restriction index / ICU load         |
| **Δ Cost Index**                 | Cost per ICU bed vs. standard bed               |

---

### 🧾 Repository Structure

```
📂 Report_COVID19/
├── 📘 EPICODE_PYTHON_DAPT0125_M4_Python_Esame_Finale_Gaetano_Rizzo.ipynb
│     └─ Global Analysis (Our World in Data)
├── 📊 REPORT_BUILDWEEK_M2_Team5.pdf
│     └─ XYFarma Report (Italian Regions)
└── 📄 README.md
```

---

### 💡 Conclusions

* The integration of **open data** (OWID + Ministero della Salute) enables transparent and replicable analysis.
* **mRNA vaccines** demonstrated greater effectiveness in reducing mortality.
* **Excel storytelling** complements **Python EDA**, making results more accessible for decision-makers.
* The study supports **data-driven healthcare investment strategies**.

---

### 🧰 Tools & Skills

**Python**, **Excel**, **Pandas**, **Seaborn**, **Data Visualization**, **Statistical Analysis**, **Healthcare Analytics**, **Open Data**

---

### 🔗 Resources

* 📘 Notebook: [`EPICODE_PYTHON_DAPT0125_M4_Python_Esame_Finale_Gaetano_Rizzo.ipynb`](./EPICODE_PYTHON_DAPT0125_M4_Python_Esame_Finale_Gaetano_Rizzo.ipynb)
* 📊 Report: [`REPORT_BUILDWEEK_M2_Team5.pdf`](./REPORT_BUILDWEEK_M2_Team5.pdf)

---

## 🇮🇹 Versione Italiana

### 📌 Panoramica

Il progetto combina un’analisi **Python-based** dei dati globali con un **report Excel** dedicato al contesto italiano, al fine di comprendere l’andamento della pandemia e valutare l’efficacia delle strategie vaccinali.

Sono state realizzate due analisi complementari:

1. **Analisi Globale (Python)** — Basata sul dataset [Our World in Data](https://github.com/owid/covid-19-data), con focus su casi, decessi, vaccinazioni e trend ICU a livello mondiale.
2. **Report XYFarma (Excel)** — Caso di studio applicativo basato sui dati del *Ministero della Salute*, volto a valutare l’efficacia dei vaccini e i costi per il sistema sanitario nazionale.

---

### 🧩 Fonti dei Dati

| Dataset                    | Fonte                                                                                                                                                            | Formato | Descrizione                                                                       |
| -------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | --------------------------------------------------------------------------------- |
| **Dati Globali COVID-19**  | [Our World in Data – COVID-19](https://github.com/owid/covid-19-data/tree/master/public/data)                                                                    | CSV     | Serie storiche globali su casi, decessi, test, vaccinazioni e misure restrittive. |
| **Dati Italiani COVID-19** | [Ministero della Salute – Dati COVID-19 Italia](https://dati-covid.italia.it/) e [COVID-19 Opendata Vaccini](https://github.com/italia/covid19-opendata-vaccini) | CSV     | Dati regionali su contagi, guarigioni, vaccinazioni e costi ospedalieri.          |

---

### 🧠 Obiettivi

* Descrivere l’**evoluzione temporale** della pandemia a livello globale e nazionale.
* Confrontare **contagi e guarigioni** per area geografica.
* Valutare l’**efficacia dei vaccini** nel ridurre la mortalità.
* Analizzare la **capacità ospedaliera e intensiva** nel tempo.
* Studiare le **implicazioni economiche** per la sanità pubblica.

---

### 🧮 Metodi e Strumenti

**Linguaggi e Librerie:**
`Python 3`, `Pandas`, `NumPy`, `Matplotlib`, `Seaborn`

**Passaggi Analitici:**

1. **Pulizia e normalizzazione dei dati**
2. **Analisi esplorativa (EDA)** per continente, Paese e regione
3. **Visualizzazioni interattive** (serie temporali e correlazioni)
4. **Report Excel XYFarma** con tabelle pivot, grafici regionali e analisi per tipologia di vaccino

---

### 📊 Principali Risultati

#### 🌍 Analisi Globale (Our World in Data)

* **Asia (38,8%)** e **Europa (32,6%)** rappresentano oltre il 70% dei casi globali.
* L’Italia mostra picchi stagionali marcati nel 2022.
* **Tasso di occupazione ICU:** Francia > Germania > Italia.
* L’**indice di restrizione** italiano risulta il più elevato in rapporto ai ricoveri in terapia intensiva.

#### 🇮🇹 Caso XYFarma (Excel)

* **Regioni più colpite:** Lombardia, Veneto, Campania, Lazio.
* I vaccini **a mRNA (Pfizer, Moderna)** hanno ridotto maggiormente la mortalità.
* I vaccini **a vettore virale (AstraZeneca)** mostrano tassi di mortalità più alti.
* Le **ricadute economiche** indicano un minor costo sanitario con vaccini mRNA.

---

### 📈 Indicatori Principali (KPI)

| KPI                                 | Definizione                                          |
| ----------------------------------- | ---------------------------------------------------- |
| **Δ Mortalità per Tipo di Vaccino** | Tasso di mortalità dei vaccinati per produttore      |
| **Tasso di Ricovero in ICU**        | Pazienti in terapia intensiva / ricoverati totali    |
| **Tasso di Utilizzo ICU**           | Pazienti ICU / popolazione                           |
| **Rapporto Restrizioni/ICU**        | Indice di restrizione / pazienti ICU                 |
| **Indice Δ Costi**                  | Costo medio giornaliero ICU vs posto letto ordinario |

---

### 🧾 Struttura della Repository

```
📂 Report_COVID19/
├── 📘 EPICODE_PYTHON_DAPT0125_M4_Python_Esame_Finale_Gaetano_Rizzo.ipynb
│     └─ Analisi Globale (Our World in Data)
├── 📊 REPORT_BUILDWEEK_M2_Team5.pdf
│     └─ Report XYFarma (dati italiani)
└── 📄 README.md
```

---

### 💡 Conclusioni

* L’unione tra **analisi Python** e **report Excel** offre una visione completa: epidemiologica e gestionale.
* I **vaccini a mRNA** risultano più efficaci nella riduzione della mortalità.
* L’approccio integrato favorisce la **replicabilità e trasparenza** tipiche dell’open data.
* I risultati supportano **strategie di investimento sanitario basate sui dati**.

---

### 🧰 Strumenti Utilizzati

**Python**, **Excel**, **Pandas**, **Seaborn**, **Data Visualization**, **Analisi Statistica**, **Sanità Pubblica**, **Open Data**

---

### 🔗 Risorse

* 📘 Notebook: [`EPICODE_PYTHON_DAPT0125_M4_Python_Esame_Finale_Gaetano_Rizzo.ipynb`](./EPICODE_PYTHON_DAPT0125_M4_Python_Esame_Finale_Gaetano_Rizzo.ipynb)
* 📊 Report: [`REPORT_BUILDWEEK_M2_Team5.pdf`](./REPORT_BUILDWEEK_M2_Team5.pdf)

---

© 2025 Gaetano Rizzo – Behavioral & Data Analytics Portfolio

---

