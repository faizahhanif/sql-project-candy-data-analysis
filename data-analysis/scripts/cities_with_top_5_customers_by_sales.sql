-- Find City of Top 5 customer by Sales
SELECT city, customer_id, SUM(sales) AS total_sales
FROM candy_db.clean_sales
GROUP BY customer_id, city
ORDER BY total_sales DESC
LIMIT 5;