# 🏨 Dashboard Strutture Ricettive – Regione Marche (Excel)

*(English 🇬🇧 / Italiano 🇮🇹)*

---

## 🇬🇧 English Version

### 📌 Overview

This project presents an **interactive Excel dashboard** that allows users to explore and search **hospitality structures (hotels, B&Bs, agritourisms, hostels, etc.) across the Marche Region**.
After **data cleaning** and **semantic modeling in Power Pivot**, a dynamic interface was created to filter and visualize facilities by **city and category**, with details on **addresses, emails, websites, and average prices**.

---

### 🧩 Workflow

**1️⃣ Data Cleaning (Power Query)**

* Fixed mismatched fields between emails and website URLs.
* Separated multiple emails and websites into secondary columns.
* Removed redundant “Località” duplicates from “Città”.
* Normalized capitalization and removed extra spaces.
* Cleaned URLs by removing “[www.”](http://www.”) and “http://” prefixes for consistency.
* Corrected repeated civic numbers in “Stabilimenti balneari” addresses.

**2️⃣ Data Model (Power Pivot)**

* Relationship: `Strutture_Ricettive` ↔ `Prezzi` (1 to many) via *City*.
* Created multiple pivot tables and slicers for city/category filtering.

**3️⃣ Interactive Dashboard (Excel UI)**

* Main selection filter: **City**.
* Automatic update of:

  * **Average Price**
  * **Total number of facilities**
  * **List of structures by category**
* Search box for **specific facility lookup**, showing all contact details.
* Includes **legend & usage guide** for user navigation.

---

### 📊 Key Features

| Feature                | Description                                                           |
| ---------------------- | --------------------------------------------------------------------- |
| **City Filter**        | Choose any city to explore its available facilities and average price |
| **Category Filter**    | Navigate by accommodation type (B&B, Agriturismo, Hostel, etc.)       |
| **Automatic Update**   | Dynamic counts and prices update after each filter                    |
| **Search Tool**        | Instantly retrieve facility name, address, email, and website         |
| **Instructions Panel** | Built-in legend explaining how to use the dashboard                   |

---

### 🧠 Tools & Skills

**Excel**, **Power Query**, **Power Pivot**, **Data Cleaning**, **Data Modeling**, **Dashboard Design**, **User Experience**

---

### 🔗 Resources

* 📊 Dashboard: [`GR_EXCELFINALE.pdf`](./GR_EXCELFINALE.pdf)
* 📘 Data Model: [`GAETANO_RIZZO_MODELLO_DATI.xlsx`](./GAETANO_RIZZO_MODELLO%20DATI.xlsx)
* 🗂 Workflow Notes: [`README_Workflow.txt`](./README_Workflow.txt)
* 🖼️ Preview: [`StruttureRicettiveMarche.png`](./StruttureRicettiveMarche.png)

---

## 🇮🇹 Versione Italiana

### 📌 Panoramica

Il progetto propone una **dashboard interattiva in Excel** per esplorare e ricercare le **strutture ricettive della Regione Marche** (B&B, agriturismi, ostelli, campeggi, ecc.).
Dopo una fase di **pulizia dati** e la creazione del **modello semantico in Power Pivot**, è stato costruito un foglio dinamico che consente di filtrare per **città e categoria**, visualizzando indirizzi, contatti e prezzi medi aggiornati.

---

### 🧩 Workflow

**1️⃣ Pulizia Dati (Power Query)**

* Correzione dei campi email/siti web errati o scambiati.
* Divisione di più indirizzi email o URL in colonne aggiuntive.
* Rimozione delle celle “Località” duplicate con “Città”.
* Uniformazione di formattazione e maiuscole/minuscole.
* Eliminazione di prefissi “[www.”](http://www.”) e “http://” nei siti.
* Correzione di indirizzi duplicati per gli stabilimenti balneari.

**2️⃣ Creazione Modello (Power Pivot)**

* Collegamento tra tabelle `Prezzi` e `Strutture_Ricettive` (relazione 1 a molti tramite *Città*).
* Costruzione di più tabelle pivot e slicer per filtri dinamici.

**3️⃣ Dashboard Interattiva**

* Filtro principale per **Città** con aggiornamento automatico di:

  * Prezzo medio
  * Numero totale di strutture
  * Elenco per categoria
* Ricerca singola struttura con **maschera dettagliata** (indirizzo, email, sito).
* Legenda laterale con istruzioni e suggerimenti d’uso.

---

### 📊 Funzionalità Principali

| Funzionalità                 | Descrizione                                                   |
| ---------------------------- | ------------------------------------------------------------- |
| **Filtro Città**             | Seleziona una città per visualizzare strutture e prezzo medio |
| **Filtro Categoria**         | Naviga per tipo di alloggio (B&B, agriturismo, ostello, ecc.) |
| **Aggiornamento Automatico** | Dati e grafici si aggiornano in tempo reale                   |
| **Ricerca Struttura**        | Trova subito nome, indirizzo e contatti                       |
| **Legenda Guida**            | Spiega passo per passo come usare il foglio                   |

---

### 🧠 Strumenti Utilizzati

**Excel**, **Power Query**, **Power Pivot**, **Pulizia Dati**, **Modellazione Dati**, **Dashboard Design**, **Esperienza Utente**

---

### 🔗 Risorse

* 📊 Dashboard: [`GR_EXCELFINALE.pdf`](./GR_EXCELFINALE.pdf)
* 📘 Modello Dati: [`GAETANO_RIZZO_MODELLO_DATI.xlsx`](./GAETANO_RIZZO_MODELLO%20DATI.xlsx)
* 🗂 Workflow: [`README_Workflow.txt`](./README_Workflow.txt)
* 🖼️ Anteprima: [`StruttureRicettiveMarche.png`](./StruttureRicettiveMarche.png)

---

© 2025 Gaetano Rizzo – Behavioral & Data Analytics Portfolio

---
