# Olist Marketplace Analytics

## Power BI Report for E-Commerce Performance, Logistics and Customer Experience

This project is an interactive **Power BI report** focused on the Brazilian e-commerce marketplace **Olist**.

The report analyzes marketplace data to identify patterns in **orders, sales, logistics, payments and customer reviews**, transforming raw transactional data into business-oriented insights for marketing, operations and customer experience analysis.

---

## Project Navigation

- [Project Overview](#project-overview)
- [Business Question](#business-question)
- [Dataset](#dataset)
- [Tools Used](#tools-used)
- [Data Model](#data-model)
- [Key Measures and KPIs](#key-measures-and-kpis)
- [Report Pages](#report-pages)
- [Key Findings](#key-findings)
- [Repository Contents](#repository-contents)
- [How to Use This Project](#how-to-use-this-project)
- [Skills Demonstrated](#skills-demonstrated)
- [Business Value](#business-value)
- [Limitations](#limitations)
- [Next Improvements](#next-improvements)
- [Back to Portfolio](#back-to-portfolio)

---

## Project Overview

E-commerce marketplaces generate large volumes of operational, transactional and customer experience data.  
This project shows how **Power BI** can be used to transform raw marketplace data into a structured business intelligence report.

The analysis covers the full order lifecycle:

- order volume and order status;
- sales and revenue performance;
- product category contribution;
- delivery punctuality and delays;
- payment methods and installment behavior;
- customer review patterns;
- geographic distribution of orders and sellers.

The goal is to build a clear and interactive BI report that supports decision-making across **sales, logistics, customer experience and marketplace operations**.

---

## Business Question

How can marketplace data be transformed into a Power BI report that supports business decisions across sales, logistics, payments and customer experience?

More specifically, the report explores:

- which product categories generate the highest sales;
- how orders and revenue evolve over time;
- whether delivery performance is consistent across periods, regions and categories;
- which payment methods and installment patterns are most common;
- how customer reviews can highlight areas of satisfaction or operational risk;
- how marketplace performance can be monitored through clear KPIs and interactive dashboards.

---

## Dataset

The project is based on the **Olist Brazilian E-Commerce Public Dataset**.

The original dataset includes multiple CSV tables related to:

- orders;
- order items;
- customers;
- sellers;
- products;
- payments;
- reviews;
- geolocation;
- product category translation.

The analysis mainly covers marketplace activity across **2017–2018**.

---

## Tools Used

| Tool | Purpose |
|---|---|
| **Power BI** | Dashboard development and interactive data visualization |
| **Power Query** | Data cleaning, transformation and table preparation |
| **DAX** | KPI creation, time intelligence and business measures |
| **Data Modeling** | Star schema design and relationship management |
| **Power BI Visuals** | KPI cards, slicers, maps, trend charts, bar charts and report pages |

---

## Data Model

The project uses a structured data model designed to support business analysis and interactive filtering.

Main modeling steps included:

- importing and profiling the original CSV tables;
- cleaning and transforming fields in Power Query;
- standardizing date fields and data types;
- handling missing values and duplicates;
- creating a dedicated calendar table;
- designing fact and dimension tables;
- building relationships to support cross-filtering across orders, products, customers, sellers, payments and reviews.

### Main Fact Tables

| Table | Description |
|---|---|
| `olist_orders_FACT` | Core order-level table containing order status, timestamps and delivery-related fields |
| `olist_order_items_FACT` | Order item-level table containing product, seller, price and freight information |

### Main Dimension Tables

| Table | Description |
|---|---|
| `olist_customers_DIM` | Customer information and customer location |
| `olist_sellers_DIM` | Seller information and seller location |
| `olist_products_DIM` | Product information and product categories |
| `olist_order_payments_DIM` | Payment methods and installment information |
| `calendar_DIM` | Calendar table used for time-based analysis |

---

## Key Measures and KPIs

The report includes several DAX measures organized by analytical area.

| Area | Example Measures / KPIs |
|---|---|
| **Time Analysis** | `OrderQuantity`, `OrdersPY`, `SalesPY`, `VarPercOrders`, `VarPercSales` |
| **Sales & Revenue** | `Sales`, `GrossPayments`, `Markup`, `ShippingCosts` |
| **Logistics** | `%_OnTimeRate`, `OnTimeDeliveries`, `DelayedDeliveries`, `Costs_Freight` |
| **Payments** | `Avg_Payment_Per_Installment` |
| **Customer Experience** | Average review score, review distribution and category-level satisfaction indicators |

---

## Report Pages

The Power BI report is organized into five main analytical pages.

| Page | Purpose |
|---|---|
| **Orders** | Analyzes order volume, order status, monthly trends, category distribution and geographic patterns |
| **Sales** | Explores revenue trends, YoY comparison, markup, shipping costs and sales by category |
| **Reviews** | Focuses on customer feedback, average ratings, review distribution and category-level satisfaction |
| **Deliveries** | Evaluates delivery punctuality, delays, regional performance and category-level logistics |
| **Payments** | Analyzes payment methods, sales versus payments and average installment behavior |

---

## Key Findings

Main insights from the report include:

- marketplace activity increased in 2018, especially in the first part of the year;
- the growth trend appears to slow down from mid-2018, suggesting the need for further business investigation;
- delivery performance is generally strong, with a high on-time delivery rate;
- logistics performance is not uniform across categories and periods;
- some product categories show weaker customer satisfaction and should be monitored more closely;
- credit card is the dominant payment method;
- installment payments play an important role in customer purchasing behavior;
- customer reviews provide useful signals for detecting operational or product-category issues.

---

## Repository Contents

| File | Description | How to Use |
|---|---|---|
| [`README.md`](./README.md) | Main project documentation | Start here to understand the project goals, dataset, workflow and report structure |
| [`Olist_Marketplace_pbix`](./Olist_Marketplace_pbix) | Interactive Power BI report file | Download and open with **Power BI Desktop** |
| [`Procedure_Storytelling_ReportPBI_Olist_Gaetano_Rizzo.pdf`](./Procedure_Storytelling_ReportPBI_Olist_Gaetano_Rizzo.pdf) | Static PDF report/export documenting the dashboard and storytelling process | Open this file for a quick visual overview of the report |

---

## How to Use This Project

1. Start from this `README.md` to understand the analytical goal, dataset, workflow and report structure.
2. Download [`Olist_Marketplace_pbix`](./Olist_Marketplace_pbix).
3. Open the file with **Power BI Desktop** to explore the dashboard interactively.
4. Open [`Procedure_Storytelling_ReportPBI_Olist_Gaetano_Rizzo.pdf`](./Procedure_Storytelling_ReportPBI_Olist_Gaetano_Rizzo.pdf) to review the static report/export.
5. Review the sections above to understand the data model, KPIs, report pages and business insights.

---

## Skills Demonstrated

This project demonstrates the following skills:

- Power BI dashboard development;
- Power Query data cleaning and transformation;
- data profiling;
- star schema design;
- fact and dimension table modeling;
- DAX measure creation;
- KPI design;
- time intelligence analysis;
- e-commerce analytics;
- logistics performance analysis;
- payment behavior analysis;
- customer experience analysis;
- dashboard storytelling;
- business-oriented reporting.

---

## Business Value

This project shows how business intelligence can support marketplace decision-making.

Potential use cases include:

- monitoring sales and order performance;
- identifying high-performing and underperforming product categories;
- detecting logistics bottlenecks;
- monitoring delivery punctuality;
- analyzing payment behavior;
- understanding customer satisfaction patterns;
- supporting marketing, operations and customer experience strategies;
- transforming transactional e-commerce data into executive-level dashboards.

---

## Limitations

This project should be interpreted as an educational and professional portfolio project.

Main limitations include:

- the analysis is based on historical public marketplace data;
- the dashboard provides descriptive and exploratory insights, not causal explanations;
- some business interpretations would require additional commercial context;
- product categories and customer behavior may be specific to the Brazilian marketplace context;
- further validation would be required for production-level business intelligence use;
- the Power BI file name currently does not explicitly include the `.pbix` extension in the repository name.

---

## Next Improvements

Future improvements may include:

- adding dashboard preview images;
- documenting the main DAX measures;
- adding a screenshot of the data model;
- improving the Power BI file naming convention;
- adding a short executive summary with business recommendations.

---

## Disclaimer

This project is intended for educational and professional portfolio purposes only.

The dataset and third-party materials belong to their respective owners and are used only for learning, analysis and portfolio demonstration.

---

## Back to Portfolio

[Return to the main portfolio](../README.md)
