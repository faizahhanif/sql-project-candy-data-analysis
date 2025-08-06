-- Total gross profit per factory
SELECT  p.factory, SUM(s.gross_profit) AS total_profit
FROM candy_db.clean_sales AS s
JOIN candy_db.clean_products AS p
ON s.product_id = p.product_id
GROUP BY p.factory
ORDER BY total_profit DESC;