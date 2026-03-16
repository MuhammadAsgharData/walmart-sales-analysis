# Walmart Sales Analysis — SQL Portfolio Project

An end-to-end data analysis project using SQL and SQLite to explore
over 420,000 Walmart sales transactions across 45 stores.

---

## Project Structure

walmart-sql-analysis/
├── data/
│   ├── features.csv                  # Economic indicators per store/week
│   ├── stores.csv                    # Store type and size information
│   └── train.csv                     # Main weekly sales data
├── sql/
│   ├── 01_create_tables.sql          # Database schema and table creation
│   ├── 02_data_cleaning.sql          # Data cleaning and formatting
│   ├── 03_exploratory_analysis.sql   # Exploratory analysis queries
│   └── 04_portfolio_analysis.sql     # Business insight queries
├── load_data.py                      # Script to load CSV data into SQLite
├── walmart.db                        # SQLite database
└── README.md

---

## Dataset

- Source: Walmart Sales Forecasting (Kaggle)
- Records: 420,000+ weekly sales transactions
- Stores: 45 stores across three store types (A, B, C)
- Features: Weekly sales, holiday flags, temperature,
  fuel price, CPI, unemployment rate

---

## Business Questions Answered

1. Which products drive repeat purchases?
2. Which stores perform best relative to their size?
3. Which departments are most affected by holidays?
4. Which departments have the most volatile sales?
5. Which stores are declining in performance over time?
6. If Walmart had to close 10 stores, which ones should be closed?

---

## How to Run

1. Clone the repository
   git clone https://github.com/yourusername/walmart-sql-analysis.git

2. Open the database
   sqlite3 walmart.db

3. Run the scripts in order
   .read sql/01_create_tables.sql
   .read sql/02_data_cleaning.sql
   .read sql/03_exploratory_analysis.sql
   .read sql/04_portfolio_analysis.sql

---

## Skills Demonstrated

- Database design and schema creation
- Data cleaning including type conversion, null handling,
  and boolean normalization
- Exploratory data analysis using SQL
- Aggregations, GROUP BY, ORDER BY, and CASE statements
- Translating raw data into business insights

---

## Author

Muhammad Asghar Khan
Wilfrid Laurier University
LinkedIn: [your link]
GitHub: [your link]
