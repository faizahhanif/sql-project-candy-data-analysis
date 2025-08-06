-- Find Top 10 customers by sales
SELECT customer_id, sales
FROM candy_db.clean_sales
ORDER BY sales DESC
LIMIT 10;