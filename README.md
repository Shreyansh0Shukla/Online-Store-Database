# Online-Store-Database
Developed a full-stack Online Retail Store Database in MySQL featuring automated stock updates with triggers, dynamic tax/shipping cost calculations using user-defined functions, and advanced analytical queries. Enabled reporting on sales performance, inventory status, and customer behavior.

# 🛒 Online Retail Store SQL Project

This is a SQL project built using **MySQL** that simulates the backend database of an online retail store. It includes complete schema design, sample data insertion, automated stock management using triggers, tax and shipping calculations using user-defined functions, and a collection of analytical queries to derive business insights.

---

## 📂 Project Files

- **`Schema.sql`** – Contains all `CREATE TABLE` statements to build the database schema.
- **`Inserts.sql`** – Inserts sample data into tables (customers, products, orders, etc.).
- **`Functions_and_Triggers.sql`** – Includes:
  - Triggers to automatically update stock after orders
  - Functions to calculate tax and shipping cost
- **`Queries.sql`** – Contains various SQL queries for reporting and analysis.

---

## 🧱 Database Overview

The project consists of five main entities:
- `Customers`: Customer details
- `Products`: Product catalog with stock and pricing
- `Orders`: Master order records
- `Order_Details`: Line items of each order
- `Payments`: Tracks how orders were paid

---

## 💡 Key Features

- 🔄 Automatic stock reduction after new orders using a trigger
- 🧮 Dynamic tax and shipping calculations using SQL functions
- 📊 Analytical queries:
  - Top customers by total spend
  - Daily revenue tracking
  - Out-of-stock products
  - Most frequently ordered products
  - Payment mismatches for audits

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone (https://github.com/Shreyansh0Shukla/Online-Store-Database)
   cd online-retail-sql-project

---

## In MySQL Workbench or CLI, execute the following scripts in order:
-SOURCE Schema.sql
-SOURCE Inserts.sql
-SOURCE Functions_and_Triggers.sql
-SOURCE Analytical_queries.sql

---

## Requirements

-MySQL 8.0 or higher
-Basic knowledge of SQL

---

## About

About
Created by Shreyansh Shukla
Feel free to fork, star, and contribute!

---
## Lisence

This is an open source project

---
