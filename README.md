# Sales & Revenue Performance Analysis

This project focuses on analyzing sales, revenue trends, customer behavior, product performance, and marketing ROI for an eCommerce business using SQL, Python, and Power BI.



## Project Structure

data/  
sql/  
notebooks/  
powerbi/  
outputs/  
documentation/  


## Tools Used

- Python (Pandas, Matplotlib)
- MySQL
- Jupyter Notebook
- Power BI


## Dataset Information

The dataset includes the following tables:

- **Customers** – user demographics and segments  
- **Orders** – order-level revenue and payment details  
- **Order Items** – item-wise sales data  
- **Products** – products, pricing, cost, and category  
- **Categories** – category information  
- **Payments** – payment transactions and method  
- **Inventory Log** – stock movement (sale, return, restock)  
- **Marketing Campaigns** – spend and revenue from campaigns  
- **Reviews** – customer ratings and feedback  



# Power BI Dashboard

A fully interactive Power BI dashboard was created with 3 pages.



## 1. Home Page

- Introduction to the project  
- Navigation buttons to other pages  
- Quick overview KPIs  



## 2. Sales & Revenue Overview

**Key KPIs:**
- Total Revenue: 5.92M  
- Total Customers: 1000  
- Total Orders: 1500  
- Total Products: 500  
- Average Order Value (AOV): 3,950  

**Visuals Included:**
- Monthly and yearly revenue trend  
- Top 10 products by revenue  
- Orders by payment method  
- Top-performing country  
- Best-selling product  
- Average product rating  



## 3. Marketing & Customer Insights

**Marketing Insights:**
- ROI for each marketing channel  
- Spend vs Revenue for campaigns  
- Best performing channels  
- Email marketing performs the best  
- Social media ROI is the lowest  

**Customer Insights:**
- Customer segmentation: Regular, New, Premium, VIP  
- Repeat vs New customer performance  
- Country-wise and category-wise performance  
- Rating and review-based insights  



# Jupyter Notebook (EDA)

The notebook includes:

- Loading and cleaning the dataset  
- Handling missing values  
- Datetime conversions  
- Summary statistics  
- SQL queries with SQLAlchemy  
- Monthly revenue trend  
- Category and product analysis  
- Payment analysis  
- Inventory movement patterns  



# PDF Report

A detailed report is included in the `documentation/` folder with all insights and charts.



# Key Insights

- Total revenue is above **5.92M**  
- AOV is around **3,950**  
- Electronics and Clothing are the most profitable categories  
- Western Harum Elite is the top-selling product  
- Regular customers form the majority group  
- Email delivers the highest ROI  
- Social media campaigns underperform  
- Average product rating is **2.99**  



# Future Improvements

- Add sales forecasting  
- Build customer lifetime value (CLV) model  
- Create Streamlit-based dashboard  
- Automate refresh flow for Power BI  

