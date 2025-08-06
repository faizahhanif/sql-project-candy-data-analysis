-- Total gross profit per division
SELECT p.division, SUM(s.gross_profit) AS total_profit
FROM candy_db.clean_sales AS s
JOIN candy_db.clean_products AS p
ON s.product_id = p.product_id
GROUP BY p.division
ORDER BY total_profit DESC;