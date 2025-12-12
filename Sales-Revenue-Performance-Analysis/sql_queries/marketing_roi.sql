# ROI for each marketing campaign

query = '''
SELECT
    channel,
    SUM(total_spent) AS total_spent,
    SUM(revenue_generated) AS total_revenue,
    ROUND(((SUM(revenue_generated) - SUM(total_spent)) / SUM(total_spent)) * 100, 2)
        AS ROI_percentage,
    CONCAT(ROUND(((SUM(revenue_generated) - SUM(total_spent)) / SUM(total_spent)) * 100, 2), '%')
        AS ROI_label
FROM marketing_campaigns
GROUP BY channel
ORDER BY ROI_percentage DESC;
'''

roi_marketing_campaign = pd.read_sql(query, engine)
print(roi_marketing_campaign)




# How would you calculate revenue generated vs spend per campaign channel?

query = '''
SELECT
    channel,
    SUM(total_spent) AS total_spent,
    SUM(revenue_generated) AS revenue_generated,
    (SUM(revenue_generated) - SUM(total_spent)) AS profit_or_loss,
    CASE
        WHEN (SUM(revenue_generated) - SUM(total_spent)) > 0 THEN 'Profit'
        WHEN (SUM(revenue_generated) - SUM(total_spent)) = 0 THEN 'Break Even'
        ELSE 'Loss'
    END AS status,
    CONCAT( ROUND(((SUM(revenue_generated) - SUM(total_spent)) / SUM(total_spent)) * 100, 2), '%') AS ROI
FROM marketing_campaigns
GROUP BY channel
ORDER BY ROI DESC;
'''

campaign_channel = pd.read_sql(query, engine)
print(campaign_channel)




# Count of completed vs pending orders

query = '''
SELECT
    CASE
        WHEN status = "Delivered" THEN 'Completed'
        WHEN status = "Pending" THEN 'Pending'
        ELSE 'Other'
    END AS order_status,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC
'''

order_status = pd.read_sql(query, engine)
print(order_status)




# Distribution of Payment Methods

query = '''
SELECT
    payment_method,
    COUNT(*) AS distribution,
    CONCAT(ROUND((COUNT(*) / total_over.total_count) * 100, 2), '%') AS percentage
FROM payments
JOIN (SELECT COUNT(*) AS total_count FROM payments) AS total_over
GROUP BY payment_method
ORDER BY distribution DESC;
'''

payment_methods = pd.read_sql(query, engine)
print(payment_methods)




# Track stock movement from the inventory_log

query = '''
SELECT
    product_id,
    change_type,
    quantity_change,
    DATE(change_date) AS change_date,
    SUM(quantity_change)
        OVER( PARTITION BY product_id ORDER BY change_date ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS cumulative_stock
FROM inventory_log
ORDER BY product_id, change_date;
'''

stock_movement = pd.read_sql(query, engine)
print(stock_movement)





# cummulative revenue month-by-month

query = '''
SELECT
    month,
    monthly_revenue,
    SUM(monthly_revenue) OVER(ORDER BY month) AS cumulative_revenue
FROM (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(total_amount) AS monthly_revenue
    FROM orders
    GROUP BY month
) AS subquery
ORDER BY month
'''

cummulative_revenue = pd.read_sql(query, engine)
print(cummulative_revenue)





# Moving average of AOV for the last 3 months.

query = '''
SELECT
    month,
    avg_value,
    ROUND(AVG(avg_value) OVER(ORDER BY month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS aov_cummulative
FROM (
    SELECT
        DATE_FORMAT(order_date, '%y-%m') AS month,
        ROUND(AVG(total_amount), 2) AS avg_value
    FROM orders
    GROUP BY month
) AS subquery
ORDER BY month
'''

cummulative_aov = pd.read_sql(query, engine)
print(cummulative_aov)

