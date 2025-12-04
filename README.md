🔍 Overview

This project demonstrates a full data analytics pipeline—from loading raw data to generating business insights.
It includes data cleaning, exploratory data analysis (EDA), SQL querying, and an interactive Power BI dashboard.
The goal is to understand customer purchasing behavior and identify trends that support data-driven decisions.

📁 Dataset

The dataset contains information on customer demographics, purchase history, and product details.

Imported into Python for initial cleaning and EDA, and later loaded into PostgreSQL for SQL-based analysis.

Columns analyzed include:
Customer ID, Age, Gender, Purchase Amount, Product Category, Date of Purchase, etc.

🛠️ Tools & Technologies

Python (Pandas, NumPy, Matplotlib/Seaborn)

PostgreSQL + SQL for querying and analysis

Power BI for dashboard development

Jupyter Notebook for documentation

GitHub for version control and project sharing

📘 Steps Performed
1. Load & Inspect Data (Python)

Imported the dataset using Pandas

Checked shape, data types, missing values, duplicates

Generated summary statistics

2. Exploratory Data Analysis (EDA)

Visualized customer demographics, spending patterns, and category preferences

Identified trends, outliers, and correlations

Performed groupby operations and feature exploration

3. Data Cleaning

Handled missing values and inconsistent entries

Removed duplicates

Converted data types (dates, numeric fields)

Created new features to support analysis

4. SQL Analysis on PostgreSQL

Loaded cleaned data into PostgreSQL

Ran SQL queries for deeper insights, such as:

Top-spending customers

Sales by category

Monthly revenue patterns

Customer segmentation

Applied JOINS, GROUP BY, WINDOW FUNCTIONS, and aggregate queries

5. Power BI Dashboard

Built an interactive dashboard with key metrics, including:

Total Sales & Orders

Revenue by Category

Customer Segmentation

Monthly Trends

Added slicers and filters for user-driven exploration

Designed clean visuals aligned with business reporting standards

📈 Results & Insights

Key findings include:

Identification of high-value customer segments

Top-performing product categories

Seasonal and monthly sales trends

Customer demographic impact on spending

Actionable insights to improve marketing & sales strategies
