-- Find Top 10 customers by gross profit
SELECT customer_id, gross_profit 
FROM candy_db.clean_sales
ORDER BY gross_profit DESC
LIMIT 10;