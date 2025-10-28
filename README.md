# Data Science Systems Project 
By Aaron Chan  
Fall 2025

---

## Overview
For this project, I created a **data warehouse and ETL pipeline** that tracks content performance for UGC (User-Generated Content) creators.  
The goal was to show I can design a **dimensional data mart**, build an **ETL system**, and write **SQL queries** to analyze data.

---

## What I Did
- Designed a **star schema** with one fact table (`fact_content_performance`) and five dimension tables:
  - `dim_date`
  - `dim_creator`
  - `dim_platform`
  - `dim_campaign`
  - `dim_asset`
 
- Built an **ETL pipeline** in Python that:
  - Extracts data from multiple sources (SQL, NoSQL, CSV, and an API)
  - Transforms data (cleans, joins, calculates KPIs)
  - Loads everything into a warehouse (SQLite)
    
- Wrote **SQL queries** to check data quality and show analysis like:
  - Top performing assets by revenue
  - ROAS (return on ad spend) by week and platform
  - Average watch time per creator

---

## Requirements Fulfilled
✅ Designed a working dimensional model (star schema)  
✅ Created a complete ETL process  
✅ Used multiple data sources (SQL, NoSQL, API, files)  
✅ Loaded data into a warehouse  
✅ Ran analytical SQL queries successfully  

---

## How to Run
1. Clone this repo:
   git clone https://github.com/aaronchan/ds-systems-ugc-mart.git
   cd ds-systems-ugc-mart
2. Install dependencies:
   pip install -r requirements.txt
3. Run the ETL pipeline:
   python etl/load_to_db.py
4. Open SQLite and test the queries
   sqlite3 datawarehouse.db
  .read sql/sample_queries.sql
