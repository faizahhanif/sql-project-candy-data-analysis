-- Find average processing time for every product
SELECT product_name, 
    AVG(DATEDIFF(ship_date, order_date)) AS avg_processing_time
FROM candy_db.clean_sales
GROUP BY product_name
ORDER BY avg_processing_time DESC;