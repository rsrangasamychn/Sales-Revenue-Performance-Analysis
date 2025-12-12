# Monthly revenue trend

query = '''
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS total_revenue,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(total_amount),2) AS avg_order_value
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY DATE_FORMAT(order_date, '%Y-%m');
'''

monthly_trend = pd.read_sql(query, engine)
print(monthly_trend)



# Quarterly revenue trend

query = '''
SELECT 
    CONCAT(YEAR(order_date), '-Q', QUARTER(order_date)) AS quarter,
    SUM(total_amount) AS total_revenue,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(total_amount),2) AS avg_order_value
FROM orders
GROUP BY YEAR(order_date), QUARTER(order_date)
ORDER BY YEAR(order_date), QUARTER(order_date);
'''

quarterly_trend = pd.read_sql(query, engine)
print(quarterly_trend)
print('\n')

# Quarterly revenue plot
plt.figure(figsize=(8,4))
plt.plot(quarterly_trend['quarter'], quarterly_trend['total_revenue'], marker='o')
plt.title("Quarterly Revenue Trend")
plt.xlabel("Quarter")
plt.ylabel("Total Revenue")
plt.grid(True)
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()




