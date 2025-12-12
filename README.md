Sales & Revenue Performance Analysis

This project focuses on analyzing sales, revenue, product performance, customer behavior, and marketing ROI for an eCommerce business using SQL, Python, and Power BI.

Project Structure

data/

sql/

notebooks/

powerbi/

outputs/

documentation/

Tools Used

Python (Pandas, Matplotlib)

MySQL

Jupyter Notebook

Power BI

Dataset Information

The dataset contains multiple tables covering:

Customers – demographics, segments, signup dates

Orders – order dates, amounts, payment methods

Order Items – product-level sales

Products – price, cost, category, stock

Categories – list of product categories

Payments – payment method and payment status

Inventory Log – stock changes (sale, return, restock)

Marketing Campaigns – marketing spend and revenue

Reviews – customer product ratings and feedback

Power BI Dashboard (3 Pages)

A complete Power BI dashboard has been created for this project.
It includes 3 pages:

1. Home Page

Introduction about the project

Navigation buttons to other pages

Quick overview of data and analysis

2. Sales & Revenue Overview

This page highlights overall business performance.

Key KPIs:

Total Revenue: 5.92M

Total Customers: 1000

Total Orders: 1500

Total Products: 500

Average Order Value (AOV): 3,950

Visuals included:

Revenue trend by Year and Month

Top 10 products by revenue

Orders by payment method

Top performing country

Best selling product

Average product rating

3. Marketing & Customer Insights

This page focuses on understanding customers and marketing effectiveness.

Marketing Insights:

ROI for each marketing channel

Total spend vs total revenue

Top converting channels

Email marketing shows the highest ROI

Social media has the lowest ROI

Customer Insights:

Customer segment distribution (Regular, New, Premium, VIP)

Repeat customer behavior

Purchase patterns

Average ratings by customers

Country-wise and category-wise trends

Jupyter Notebook (EDA)

The notebook includes:

Loading and cleaning data

Converting date formats

Summary statistics

Visualizations for revenue, customers, products

SQL queries using SQLAlchemy

Cumulative revenue

Rolling averages

Inventory movement analysis

PDF Report

A detailed report is available inside the documentation folder.
It contains summarized insights, charts, and final recommendations.

Key Findings (Summary)

Revenue: 5.92M+ total revenue

AOV: Around 3,950

Top categories: Electronics and Clothing

Top product: Western Harum Elite

Customer majority: Regular customers form the highest segment

Marketing: Email has the highest ROI, social media the lowest

Ratings: Average rating is around 2.99

Future Improvements

Add sales forecasting

Build CLV (Customer Lifetime Value) model

Create a Streamlit dashboard

Automate ETL for Power BI
