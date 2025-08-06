-- Find average processing time for every ship mode
SELECT ship_mode, 
    AVG(DATEDIFF(ship_date, order_date)) AS avg_processing_time
FROM candy_db.clean_sales
GROUP BY ship_mode
ORDER BY avg_processing_time DESC;