# Walmart Sales Analysis — SQL & Tableau Portfolio Project

An end-to-end data analysis project using SQL, SQLite, and Tableau to explore 
over 420,000 Walmart sales transactions across 45 stores.

## Project Structure

walmart-sql-analysis/
├── data/
│   ├── features.csv               # Economic indicators per store/week
│   ├── stores.csv                 # Store type and size information
│   └── train.csv                  # Main weekly sales data
├── sql/
│   ├── 01_create_tables.sql       # Database schema and table creation
│   ├── 02_data_cleaning.sql       # Data cleaning and formatting
│   ├── 03_exploratory_analysis.sql  # Exploratory analysis queries
│   └── 04_portfolio_analysis.sql  # Business insight queries
├── load_data.py                   # Script to load CSV data into SQLite
├── walmart.db                     # SQLite database
├── dashboard.png                  # Tableau dashboard preview
└── README.md

## Dataset

- **Source:** Walmart Sales Forecasting (Kaggle)
- **Records:** 420,000+ weekly sales transactions
- **Stores:** 45 stores across three store types (A, B, C)
- **Features:** Weekly sales, holiday flags, temperature, fuel price, CPI, 
  unemployment rate

## Dashboard

View the interactive Tableau dashboard:
[Walmart Sales Performance Dashboard](YOUR_TABLEAU_PUBLIC_LINK)

![Dashboard Preview](dashboard.png)

**Key Visual Insights:**
- Dept 72 outsells every other department by nearly 2x (~700K total sales)
- Dept 72 generates $48,524 more in average sales during holiday weeks 
  than non-holiday weeks
- Holiday sensitivity is highly concentrated — most departments show 
  minimal lift outside Dept 72

## Business Questions Answered

- Which stores perform best relative to their size?
- Which departments are most affected by holidays?
- Which departments have the most volatile sales?
- Which stores are declining in performance over time?
- If Walmart had to close 10 stores, which ones should be closed?

## How to Explore This Project

1. Browse the `/sql` folder to view all queries
2. View the live Tableau dashboard: [click here](YOUR_TABLEAU_PUBLIC_LINK)
3. Key business insights start in `04_portfolio_analysis.sql`

## Skills Demonstrated

- Database design and schema creation
- Data cleaning including type conversion, null handling, and boolean 
  normalization
- Exploratory data analysis using SQL
- Aggregations, GROUP BY, ORDER BY, CASE statements, CTEs, and window 
  functions
- Data visualization using Tableau (treemap, bar chart, interactive dashboard)
- Translating SQL findings into executive-level visual storytelling
- Translating raw data into actionable business insights

## Author

**Muhammad Asghar Khan**
Wilfrid Laurier University
[LinkedIn](https://linkedin.com/in/muhammad-asghar-khan) | [GitHub](https://github.com/MuhammadAsgharData)
