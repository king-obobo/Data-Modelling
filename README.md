# Global Super Store Database Setup
A PostgreSQL implementation of the Global Super Store dataset designed to support sales, customer, and product analysis.

## Dataset Information
Dataset Name: Global Super Store Dataset

Source / Link: Kaggle - [Global Super Store Dataset](https://www.kaggle.com/datasets/apoorvaappz/global-super-store-dataset/data)

Description: This data set is a flat csv file which Contains global retail transaction data covering order details, customer demographics, shipping modes, product categories, sales, discounts, and profitability metrics.It has 24 columns and 51,000+ rows.

## Goal of the project
The goal of this project is simple. Model the flat CSV file to atleast its first normal form (1NF). 

## Prerequisites & Environment
PostgreSQL Version: 18.4-2 (or PostgreSQL 12+)

Database Client Tool: psql (CLI), pgAdmin, or DBeaver

## Step-by-Step Database Creation
Follow these steps in PostgreSQL to create and prepare the database:

1. Connect to PostgreSQL:

    Open your terminal/command prompt or database management tool and connect to PostgreSQL server:

``` psql 
-U postgres
```
2. Create Database & Connect
Run the following SQL commands:

```SQL
-- Create the database
CREATE DATABASE name_of_db;

-- Connect to the newly created database

\c global_superstore
```

## Executing the SQL Schema Script
You can apply the provided schema script via Command Line (psql) or via pgAdmin / Query Tool:

Option A: Using psql (Command Line)
Navigate to the directory containing your script file (e.g., schema.sql) and run:

```psql 
\i 'absolute_path/script.sql'
```
NB: Use forward slashes (/) if you're using windows for the absolute path


Option B: **Using pgAdmin or DBeaver**

Open your GUI client (e.g., pgAdmin).

Connect to the database you created previously .

Open the Query Tool.

Copy and paste the content of this [script](script.sql) and execute.


## Database Design Decisions & Assumptions
* Data Normalization (1NF):
The original flat dataset (CSV/Excel format) contains redundant records across customer names, product attributes, and order level metadata.  
SQL.

    **Separation of Entities**: The design decouples the flat file into four normalized tables: customers, products, orders, and order_details to reduce redundancy and enforce referential integrity.
