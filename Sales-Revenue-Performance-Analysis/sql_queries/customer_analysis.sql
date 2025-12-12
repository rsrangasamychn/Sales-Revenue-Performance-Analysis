# Frequently ordered customers

query = '''
SELECT
    CONCAT(first_name, ' ' ,last_name) AS full_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, full_name
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC
'''

frequent_customers = pd.read_sql(query, engine)
print(frequent_customers)





# Number of customers per segment

query = '''
SELECT
    customer_segment,
    COUNT(customer_id) AS total_customers
FROM customers
GROUP BY customer_segment
ORDER BY customer_segment
'''

customers_per_segment = pd.read_sql(query, engine)
print(customers_per_segment)