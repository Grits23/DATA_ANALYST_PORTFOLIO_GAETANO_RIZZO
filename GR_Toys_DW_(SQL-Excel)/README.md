# GR Toys Data Warehouse & Excel Dashboard

## MySQL Data Warehouse Project with Semantic Views and Excel Reporting

This project is an end-to-end **Data Warehouse and Business Intelligence project** developed for a fictional toy company.

It covers the full analytical workflow:

- conceptual data modeling;
- logical schema design;
- physical database implementation in MySQL;
- SQL analytical queries;
- semantic SQL views;
- Excel semantic model;
- final Excel dashboard for business reporting.

The project demonstrates how raw transactional data can be structured into a relational data warehouse and then transformed into a reporting layer for business analysis.

---

## Project Navigation

- [Project Overview](#project-overview)
- [Business Question](#business-question)
- [Data Warehouse Design](#data-warehouse-design)
- [Database Implementation](#database-implementation)
- [Analytical Queries](#analytical-queries)
- [Semantic Views](#semantic-views)
- [Excel Semantic Model and Dashboard](#excel-semantic-model-and-dashboard)
- [Repository Contents](#repository-contents)
- [How to Run and Use This Project](#how-to-run-and-use-this-project)
- [Skills Demonstrated](#skills-demonstrated)
- [Business Value](#business-value)
- [Limitations](#limitations)
- [Next Improvements](#next-improvements)
- [Disclaimer](#disclaimer)
- [Back to Portfolio](#back-to-portfolio)

---

## Project Overview

GR Toys Data Warehouse simulates the analytical backend of a retail company selling toys across different products, customers, resellers, employees and geographic areas.

The project includes both the **database layer** and the **reporting layer**:

1. a MySQL data warehouse built from scratch;
2. a set of analytical SQL queries;
3. semantic views designed for reporting;
4. an Excel workbook containing the semantic model, imported SQL views and dashboard.

This makes the project a complete example of a BI workflow:

```text
Database Design → SQL Implementation → Analytical Queries → Semantic Views → Excel Dashboard
```

---

## Business Question

How can a toy company organize sales data into a relational data warehouse and use it to support business reporting?

More specifically, the project addresses questions such as:

- are primary keys correctly defined and unique across tables?
- how can sales transactions be connected to products, customers, employees and geography?
- which products generate the highest sales volume?
- which products are sold above the average quantity in the latest available year?
- what is the yearly revenue by product?
- what is the revenue by country and year?
- which product category is most requested by the market?
- are there any unsold products?
- how can normalized SQL tables be transformed into semantic views for Excel reporting?
- how can SQL views feed a dashboard for business users?

---

## Data Warehouse Design

The database follows a dimensional modeling logic based on a **star schema**.

### Fact Table

| Table | Description |
|---|---|
| `Sales` | Central transactional table containing order lines, product keys, customer keys, reseller keys, location keys, employee keys, quantities, unit prices, costs and sales amounts |

### Dimension Tables

| Table | Description |
|---|---|
| `Product` | Product-level information such as product name, color, standard cost, list price, size and weight |
| `ProductCategory` | Product category information |
| `Customer` | Customer-level information and customer type |
| `Reseller` | Reseller information and business type |
| `Employee` | Employee information related to sales activity |
| `Location` | City and zip-code level information |
| `Country` | Country-level information |
| `Region` | Macro-geographic region information |
| `Time` | Date dimension used for time-based analysis |

The project includes both a conceptual model and a logical model exported from MySQL Workbench.

---

## Database Implementation

The physical implementation is provided in:

[`GR_Toys_ImplementazioneFisica.sql`](./GR_Toys_ImplementazioneFisica.sql)

The script creates the database:

```sql
CREATE DATABASE GR_Toys_Schema;
USE GR_Toys_Schema;
```

It then defines all core tables, primary keys and foreign key relationships.

The physical model includes:

- `Region`;
- `Country`;
- `Location`;
- `Employee`;
- `Reseller`;
- `Customer`;
- `Time`;
- `ProductCategory`;
- `Product`;
- `Sales`.

The `Sales` table is implemented as the central fact table and uses a composite primary key based on:

```sql
OrderNumber, OrderLineNumber
```

The script also populates the database with synthetic data designed for portfolio and learning purposes.

---

## Analytical Queries

The analytical SQL logic is included in:

[`GR_Toys_Queries.sql`](./GR_Toys_Queries.sql)

The script includes queries for:

| Analytical Area | Description |
|---|---|
| **Data Integrity Checks** | Verification of primary key uniqueness across implemented tables |
| **Transaction Exploration** | Extraction of transaction details including order number, date, product, category, country and region |
| **Product Performance** | Identification of products sold above the average quantity in the latest available year |
| **Yearly Revenue** | Calculation of total revenue by product and year |
| **Geographic Revenue** | Calculation of revenue by country and year |
| **Market Demand** | Identification of the most requested product category |
| **Unsold Products** | Detection of products with no sales using two different SQL approaches |
| **Semantic Views** | Creation of denormalized views for Excel and BI reporting |

The query script combines technical checks and business-oriented analysis, making it suitable for a SQL/Data Analyst portfolio.

---

## Semantic Views

The project creates reporting-oriented SQL views to simplify downstream analysis.

These views act as a semantic layer between the normalized database and the Excel dashboard.

### Product View

[`GR_Toys_Queries.sql`](./GR_Toys_Queries.sql) creates the view:

```sql
GR_View_ToysProducts
```

This view denormalizes product and category information.

It includes:

- product key;
- product name;
- product category;
- color;
- size;
- weight;
- standard cost;
- list price.

### Geography View

[`GR_Toys_Queries.sql`](./GR_Toys_Queries.sql) also creates the view:

```sql
GR_View_ToysGeography
```

This view denormalizes geographic information.

It includes:

- location key;
- city;
- zip code;
- country;
- region.

These views are designed to be imported into Excel and used as reporting tables in the semantic model.

---

## Excel Semantic Model and Dashboard

The project includes an Excel workbook containing the final reporting layer:

[`NOME_FILE_EXCEL.xlsx`](./NOME_FILE_EXCEL.xlsx)

The Excel file includes:

- imported SQL views;
- semantic model relationships;
- reporting-ready tables;
- dashboard visuals;
- business-oriented KPIs and summaries.

The Excel dashboard represents the final business-facing layer of the project.

It allows users to explore sales data through a more accessible interface, built on top of the SQL data warehouse and semantic views.

---

## Repository Contents

| File | Description | How to Use |
|---|---|---|
| [`README.md`](./README.md) | Main project documentation | Start here to understand the project logic, files and workflow |
| [`ProgettazioneConcettuale.png`](./ProgettazioneConcettuale.png) | Conceptual data model | Open this image to inspect the high-level entity design |
| [`GR_Toys_ModelloLogico_Workbench_PNG.png`](./GR_Toys_ModelloLogico_Workbench_PNG.png) | Logical model exported from MySQL Workbench | Use it to review tables, relationships and schema structure |
| [`GR_Toys_ImplementazioneFisica.sql`](./GR_Toys_ImplementazioneFisica.sql) | SQL script for database creation, table definition and data population | Run this script first in MySQL |
| [`GR_Toys_Queries.sql`](./GR_Toys_Queries.sql) | SQL script containing integrity checks, analytical queries and reporting views | Run this script after the physical implementation |
| [`GR_Toys_Semantic_Model_Views_Dashboard.xlsx`](./GR_Toys_Semantic_Model_Views_Dashboard.xlsx) | Excel workbook containing semantic model, imported SQL views and dashboard | Open this file to explore the final reporting layer |

---

## How to Run and Use This Project

### 1. Review the data models

Start by opening:

- [`ProgettazioneConcettuale.png`](./ProgettazioneConcettuale.png)
- [`GR_Toys_ModelloLogico_Workbench_PNG.png`](./GR_Toys_ModelloLogico_Workbench_PNG.png)

These files show the conceptual and logical structure of the data warehouse.

---

### 2. Run the physical implementation script

Open **MySQL Workbench** or another MySQL-compatible SQL client.

Then execute:

[`GR_Toys_ImplementazioneFisica.sql`](./GR_Toys_ImplementazioneFisica.sql)

```sql
SOURCE ./GR_Toys_ImplementazioneFisica.sql;
```

This script creates the database schema, tables, constraints and sample data.

---

### 3. Run the analytical queries and semantic views

After creating and populating the database, execute:

[`GR_Toys_Queries.sql`](./GR_Toys_Queries.sql)

```sql
SOURCE ./GR_Toys_Queries.sql;
```

This script includes:

- primary key uniqueness checks;
- analytical sales queries;
- product performance queries;
- geographic revenue analysis;
- unsold product checks;
- semantic view creation.

---

### 4. Test the semantic views

You can test the reporting views with:

```sql
SELECT *
FROM GR_View_ToysProducts;

SELECT *
FROM GR_View_ToysGeography;
```

These views can be used as simplified reporting tables for Excel or Power BI.

---

### 5. Open the Excel dashboard

Open the Excel workbook:

[`GR_Toys_Semantic_Model_Views_Dashboard.xlsx`](./GR_Toys_Semantic_Model_Views_Dashboard.xlsx)

Use it to explore:

- the semantic model;
- imported SQL views;
- dashboard visuals;
- sales reporting outputs;
- business-oriented summaries.

This file represents the final reporting layer of the project.

---

## Skills Demonstrated

This project demonstrates the following skills:

- relational database design;
- conceptual data modeling;
- logical schema design;
- physical database implementation;
- SQL DDL;
- SQL DML;
- primary key and foreign key constraints;
- star schema design;
- data integrity checks;
- joins across multiple tables;
- aggregation queries;
- subqueries;
- analytical SQL;
- view creation;
- semantic layer preparation;
- Excel data modeling;
- Excel dashboard design;
- BI reporting workflow.

---

## Business Value

This project shows how a retail company can structure transactional sales data for analytical and reporting purposes.

Potential business use cases include:

- monitoring product sales performance;
- identifying top-selling products and categories;
- analyzing revenue by geography;
- detecting unsold products;
- preparing clean reporting views for BI dashboards;
- connecting SQL outputs to Excel reporting;
- supporting sales analysis through an accessible dashboard;
- improving data quality through integrity checks;
- creating a reusable semantic layer for business users.

---

## Limitations

This project should be interpreted as an educational and professional portfolio project.

Main limitations include:

- the dataset is synthetic and designed for learning purposes;
- the business scenario is simplified compared to a production retail environment;
- the dashboard is implemented in Excel and based on the current semantic views;
- the current project does not include an automated data refresh pipeline;
- additional documentation could further clarify the data generation logic;
- a Power BI version could be developed as a future extension.

---

## Next Improvements

Future improvements may include:

- adding screenshots of the Excel dashboard to improve GitHub preview;
- adding a data dictionary for all tables and fields;
- documenting the data generation logic;
- adding screenshots of SQL query outputs;
- creating a Power BI version of the dashboard;
- adding an executive summary with key business insights;
- improving folder organization with dedicated `docs/` and `assets/` folders.

---

## Disclaimer

This project is intended for educational and professional portfolio purposes only.

The dataset is synthetic and was created to demonstrate SQL, data modeling, semantic views and business intelligence concepts.

---

## Back to Portfolio

[Return to the main portfolio](../README.md)
