# 👠 Amazon Shoes Scraper — Python Web Data Analysis

*(English 🇬🇧 / Italiano 🇮🇹)*

---

## 🇬🇧 English Version

### 📌 Overview

This project analyzes the **competitive positioning of Geox** within the online footwear market using a **Python web scraper** applied to Amazon.
The dataset was built from **Amazon catalog data**, filtered by **gender (women)** and **color** (*black, brown, beige, red*), and compared against three competitors: **Clarks, Timberland, and Lumberjack**.

The goal was to evaluate the **product variety, pricing strategy**, and **market coverage** of Geox relative to its main competitors.

---

### 🧩 Data Source & Extraction

* **Platform scraped:** Amazon.it
* **Scraping method:** Python (BeautifulSoup, Requests)
* **Filters:**

  * Gender → Women
  * Colors → Black, Brown, Beige, Red
  * Brands → Geox, Clarks, Timberland, Lumberjack

---

### 🧮 Script Used

> The following snippet shows the scraping logic implemented in Python for each brand and color combination.

```python
import requests
from bs4 import BeautifulSoup
import pandas as pd

brands = ["geox", "clarks", "timberland", "lumberjack"]
colors = ["nero", "marrone", "beige", "rosso"]

data = []

for brand in brands:
    for color in colors:
        url = f"https://www.amazon.it/s?k={brand}+scarpe+{color}"
        response = requests.get(url, headers={'User-Agent': 'Mozilla/5.0'})
        soup = BeautifulSoup(response.text, "html.parser")

        items = soup.find_all("div", {"data-component-type": "s-search-result"})
        for item in items:
            name = item.h2.text.strip()
            price = item.find("span", {"class": "a-price-whole"})
            rating = item.find("span", {"class": "a-icon-alt"})
            data.append({
                "brand": brand,
                "color": color,
                "name": name,
                "price": price.text if price else None,
                "rating": rating.text if rating else None
            })

df = pd.DataFrame(data)
df.to_csv("amazon_4brands_shoes.csv", index=False)
```

---

### 📊 Key Analytical Questions

1. In which **categories** are we (Geox) present compared to competitors?
2. Do we offer **sufficient variety** within each category?
3. Are we **more expensive or cheaper** than the market average?
4. Which categories are **underrepresented or missing**?
5. Where could we **expand or reposition** the brand?

---

### 📈 Main KPIs

| KPI                        | Description                                |
| -------------------------- | ------------------------------------------ |
| **Δ Price (ΔPrezzo)**      | Average price difference vs competitors    |
| **Category Variety Index** | #Geox models / Average # competitor models |
| **Category Coverage**      | % presence of each brand across categories |
| **Customer Ratings**       | Average star ratings per brand/category    |

---

### 💡 Strategic Insights

* **Product Mix:** Geox focuses on *boots, sneakers, and sandals* — limited presence in *moccasins, oxford, and wedges*.
* **Pricing:** Geox shows **lower average prices** than its main competitor (*Clarks*) while maintaining similar ratings.
* **Opportunity Areas:**

  * Strengthen product variety in *moccasins* and *oxford* categories.
  * Preserve brand reputation in *Mary Jane* category (low ratings).
* **Market Position:** Affordable brand with technological innovation but narrower category range.

---

### 🧠 Tools & Skills

**Python**, **BeautifulSoup**, **Pandas**, **Excel**, **Data Cleaning**, **Competitive Analysis**, **KPI Design**, **Data Storytelling**

---

### 🔗 Resources

* 📘 Notebook: [`AmazonScraper_Shoes.ipynb`](./AmazonScraper_Shoes.ipynb)
* 📊 Raw Data: [`amazon_4marche_completa_orig.csv`](./amazon_4marche_completa_orig.csv)
* 🎞 Presentation: [`Presentazione_BW_Geox.pptx`](./Presentazione_BW_Geox.pptx)

---

## 🇮🇹 Versione Italiana

### 📌 Panoramica

Questo progetto analizza il **posizionamento competitivo del brand Geox** nel mercato online delle calzature, attraverso uno **scraper Python** applicato ad Amazon.
I dati sono stati raccolti dal catalogo Amazon.it e confrontati con i brand concorrenti **Clarks, Timberland e Lumberjack**, filtrando i prodotti **da donna** e i colori **nero, marrone, beige e rosso**.

L’obiettivo è valutare **ampiezza dell’offerta**, **strategia di prezzo** e **copertura di mercato**, individuando aree di miglioramento e opportunità di crescita.

---

### 🧩 Origine dei Dati e Raccolta

* **Piattaforma:** Amazon.it
* **Linguaggio:** Python (BeautifulSoup, Requests)
* **Filtri applicati:**

  * Genere → Donna
  * Colori → Nero, Marrone, Beige, Rosso
  * Marche → Geox, Clarks, Timberland, Lumberjack

---

### 🧮 Codice Utilizzato

> Estratto della logica di scraping per combinare marche e colori, con salvataggio dei dati in CSV.

```python
import requests
from bs4 import BeautifulSoup
import pandas as pd

brands = ["geox", "clarks", "timberland", "lumberjack"]
colors = ["nero", "marrone", "beige", "rosso"]

data = []

for brand in brands:
    for color in colors:
        url = f"https://www.amazon.it/s?k={brand}+scarpe+{color}"
        response = requests.get(url, headers={'User-Agent': 'Mozilla/5.0'})
        soup = BeautifulSoup(response.text, "html.parser")

        items = soup.find_all("div", {"data-component-type": "s-search-result"})
        for item in items:
            name = item.h2.text.strip()
            price = item.find("span", {"class": "a-price-whole"})
            rating = item.find("span", {"class": "a-icon-alt"})
            data.append({
                "brand": brand,
                "color": color,
                "name": name,
                "price": price.text if price else None,
                "rating": rating.text if rating else None
            })

df = pd.DataFrame(data)
df.to_csv("amazon_4brands_shoes.csv", index=False)
```

---

### 📊 Domande Chiave

1. In quali **categorie** siamo presenti rispetto ai competitor?
2. Offriamo **abbastanza varietà** per categoria?
3. Siamo **più costosi o più economici** della media di mercato?
4. In quali categorie siamo **sottorappresentati o assenti**?
5. Dove possiamo **espanderci o riposizionarci**?

---

### 📈 KPI Principali

| KPI                          | Descrizione                                       |
| ---------------------------- | ------------------------------------------------- |
| **Δ Prezzo**                 | Differenza di prezzo medio rispetto ai competitor |
| **Indice Varietà Categoria** | #Modelli Geox / Media # competitor                |
| **Copertura Categoria**      | % di presenza per categoria                       |
| **Valutazioni Clienti**      | Punteggio medio per brand e categoria             |

---

### 💡 Insight Strategici

* **Mix di prodotto:** Geox concentra l’offerta su *stivali, sandali e scarpe da ginnastica*.
* **Prezzo medio inferiore** rispetto ai competitor principali.
* **Opportunità di crescita:**

  * Espandersi in *mocassini, boots e oxford*.
  * Migliorare la qualità percepita nella categoria *Mary Jane*.
* **Posizionamento:** brand accessibile con buona reputazione e innovazione tecnologica.

---

### 🧠 Strumenti Utilizzati

**Python**, **BeautifulSoup**, **Pandas**, **Excel**, **Data Cleaning**, **Analisi Competitiva**, **KPI Design**, **Data Storytelling**

---

### 🔗 Risorse

* 📘 Notebook: [`AmazonScraper_Shoes.ipynb`](./AmazonScraper_Shoes.ipynb)
* 📊 Dati grezzi: [`amazon_4marche_completa_orig.csv`](./amazon_4marche_completa_orig.csv)
* 🎞 Presentazione: [`Presentazione_BW_Geox.pptx`](./Presentazione_BW_Geox.pptx)

---

© 2025 Gaetano Rizzo – Behavioral & Data Analytics Portfolio

---

