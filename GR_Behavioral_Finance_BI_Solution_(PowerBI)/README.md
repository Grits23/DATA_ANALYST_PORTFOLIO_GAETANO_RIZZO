# GR Behavioral Finance BI Solution

## Power BI Report for Behavioral Finance and Retail Investor Analytics

This project is an interactive **Power BI report** designed to explore behavioral biases in retail investors by combining transaction-level data from the **FAR-Trans dataset** with macroeconomic indicators from the **World Bank**.

The project was developed as the final capstone of the **Epicode Data Analyst program** and aims to show how business intelligence can support the analysis of financial decision-making, investor behavior and portfolio allocation patterns.

---

## Project Overview

Retail investors do not always make fully rational financial decisions. Their trading behavior may be influenced by cognitive and behavioral biases such as selling winning assets too early, trading too frequently, following market trends or overinvesting in domestic assets.

This project translates these behavioral finance concepts into exploratory BI indicators and visual dashboards.

The goal is not to provide financial advice, but to demonstrate how **Power BI, DAX, data modeling and dashboard storytelling** can be used to analyze complex behavioral patterns in financial transaction data.

---

## Business Question

How can retail investor transaction data be used to identify behavioral patterns and support more informed, data-driven financial decision-making?

More specifically, the report explores:

- whether investors show systematic behavioral biases in their trading activity;
- how behavioral indicators vary across customers, assets and time;
- how individual-level trading behavior can be interpreted alongside macroeconomic indicators;
- how Power BI can transform complex behavioral finance data into clear, interactive insights.

---

## Behavioral Biases Analyzed

The report focuses on four behavioral bias indicators.

| Bias | Description | Analytical Goal |
|---|---|---|
| **Disposition Bias** | Tendency to sell winning assets too early and hold losing assets too long | Identify asymmetric selling behavior between gains and losses |
| **Overtrading Bias** | Excessive trading activity that may reduce long-term investment performance | Detect investors with unusually high transaction frequency |
| **Herding Bias** | Tendency to follow the most common market choices | Identify concentration around highly traded assets |
| **Home Bias** | Preference for domestic assets over international diversification | Measure exposure to domestic versus foreign assets |

The indicators were operationalized through custom DAX measures.  
For the technical documentation, see:

[View DAX Measures Documentation](./docs/dax_measures.md)

---

## Dataset

The project uses two main data sources.

### FAR-Trans Dataset

The FAR-Trans dataset includes information on financial transactions, retail investors, assets and markets.

Main analytical dimensions include:

- customers;
- financial assets;
- transaction dates;
- transaction types;
- asset classes;
- asset countries;
- sectors;
- investor-level trading behavior.

### World Bank Data

World Bank macroeconomic indicators were used to contextualize investor behavior over time.

Examples of indicators included in the analysis:

- GDP;
- inflation;
- unemployment;
- imports and exports;
- public debt;
- savings-related indicators.

---

## Tools Used

| Tool | Purpose |
|---|---|
| **Power BI** | Dashboard development and interactive data visualization |
| **Power Query** | Data cleaning, transformation and preparation |
| **DAX** | Measures, KPIs and behavioral bias indicators |
| **Data Modeling** | Relational model design and analytical structure |
| **World Bank Data** | Macroeconomic contextualization |

---

## Workflow

### 1. Data Acquisition

The project started from the FAR-Trans dataset and selected macroeconomic indicators from the World Bank.

### 2. Data Cleaning and Transformation

The datasets were cleaned and standardized before being loaded into Power BI.

Main operations included:

- standardizing transaction dates;
- harmonizing customer and asset identifiers;
- preparing yearly macroeconomic indicators;
- checking duplicates and inconsistent records;
- preparing tables for the data model.

### 3. Data Modeling

A relational model was built in Power BI to connect:

- customer information;
- financial assets;
- transactions;
- time dimensions;
- macroeconomic indicators.

The model was designed to support interactive filtering by year, customer profile, asset, country, sector and transaction type.

### 4. Behavioral Bias Indicator Design

Dedicated DAX measures were developed to estimate behavioral bias indicators.

The indicators should be interpreted as analytical proxies designed for exploratory BI analysis, not as validated financial or psychological scores.

### 5. Dashboard Development

The final Power BI report includes multiple pages designed to support both aggregate analysis and individual customer exploration.

---

## Report Pages

| Page | Purpose |
|---|---|
| **Home / Overview** | Provides a general overview of key metrics and report navigation |
| **Macroeconomic Indicators** | Shows economic trends over time using World Bank indicators |
| **Customer Analytics** | Explores customer segmentation and investor characteristics |
| **Assets & Transactions** | Analyzes assets, sectors, countries and transaction patterns |
| **Disposition Bias** | Focuses on selling behavior related to gains and losses |
| **Overtrading Bias** | Identifies excessive trading activity |
| **Herding Bias** | Explores concentration around commonly traded assets |
| **Home Bias** | Measures preference for domestic assets |
| **Bias Comparison Dashboard** | Compares the four behavioral bias indicators |
| **Customer Profile** | Provides a micro-level view of individual investor behavior |

---

## Key Analytical Outputs

The report allows users to:

- identify investors with higher exposure to specific behavioral biases;
- compare bias indicators across customer segments;
- analyze asset allocation patterns;
- explore the relationship between investor behavior and macroeconomic trends;
- move from aggregate portfolio analysis to individual customer profiles;
- support financial education and personalized advisory strategies.

---

## Repository Contents

| File / Folder | Description | How to Use |
|---|---|---|
| [`README.md`](./README.md) | Main project documentation | Start here to understand the project goals, dataset, workflow and outputs |
| [`GR_Behavioral_Finance_BI_Solution.pbix`](./GR_Behavioral_Finance_BI_Solution.pbix) | Interactive Power BI report developed for the project | Download and open with **Power BI Desktop** |
| [`PDF_CAPSTONE_Gaetano_Rizzo.pdf`](./PDF_CAPSTONE_Gaetano_Rizzo.pdf) | Static PDF version/export of the final capstone project | Open this file for a quick overview of the dashboard and project presentation |
| [`docs/dax_measures.md`](./docs/dax_measures.md) | Technical documentation of the DAX measures used to calculate behavioral bias indicators | Review the logic behind Disposition Bias, Overtrading Bias, Herding Bias and Home Bias |

---

## How to Use This Project

1. Start from this `README.md` to understand the analytical goal, dataset, workflow and report structure.
2. Download [`GR_Behavioral_Finance_BI_Solution.pbix`](./GR_Behavioral_Finance_BI_Solution.pbix).
3. Open the file with **Power BI Desktop** to explore the dashboard interactively.
4. Open [`PDF_CAPSTONE_Gaetano_Rizzo.pdf`](./PDF_CAPSTONE_Gaetano_Rizzo.pdf) to review the static version of the final report.
5. Read [`docs/dax_measures.md`](./docs/dax_measures.md) to understand how the behavioral bias indicators were calculated.

---

## Skills Demonstrated

This project demonstrates the following skills:

- Power BI dashboard design;
- DAX measure creation;
- behavioral KPI design;
- data cleaning and transformation;
- data modeling;
- financial and behavioral analytics;
- integration of transactional and macroeconomic data;
- dashboard storytelling;
- user-oriented report navigation;
- translation of complex behavioral concepts into analytical indicators.

---

## Business Value

This project shows how business intelligence can be applied to behavioral finance.

Potential use cases include:

- customer segmentation for financial advisory services;
- identification of risky or inefficient trading behaviors;
- investor education and self-awareness;
- development of personalized dashboards for retail investors;
- support for behavioral finance research;
- integration of financial behavior and macroeconomic context.

---

## Limitations

This project should be interpreted as an analytical and educational portfolio project.

Main limitations include:

- behavioral bias indicators are operational approximations based on available transaction data;
- the dashboard does not provide financial advice;
- causal interpretations cannot be made from descriptive dashboard analysis alone;
- macroeconomic indicators provide context but do not prove direct effects on investor behavior;
- additional validation would be required for production-level financial analytics.

---

## Next Improvements

Possible future improvements include:

- refining the behavioral bias scoring methodology;
- adding more robust statistical validation;
- improving customer segmentation;
- adding predictive modeling components;
- integrating additional macroeconomic or market indicators;
- creating a dedicated executive summary page;
- adding dashboard preview images to the repository;
- improving documentation of the data model and DAX measures.

---

## Suggested Future Folder Structure

The project could be progressively reorganized as follows:

```text
GR_Behavioral_Finance_BI_Solution_(PowerBI)/
│
├── README.md
├── GR_Behavioral_Finance_BI_Solution.pbix
├── PDF_CAPSTONE_Gaetano_Rizzo.pdf
│
├── docs/
│   └── dax_measures.md
│
└── assets/
    ├── overview-page.png
    ├── bias-comparison.png
    ├── customer-profile.png
    └── data-model.png
```

---

## Disclaimer

This project is intended for educational and professional portfolio purposes only.

It does not constitute financial advice.  
Datasets and third-party materials belong to their respective owners and are used only for learning, analysis and portfolio demonstration.

---

## Back to Portfolio

[Return to the main portfolio](../README.md)
