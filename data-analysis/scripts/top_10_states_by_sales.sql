-- Find Top 10 states or provinces by sales
SELECT state_or_province, SUM(sales) AS total_sales 
FROM candy_db.clean_sales
GROUP BY state_or_province
ORDER BY total_sales DESC
LIMIT 10;