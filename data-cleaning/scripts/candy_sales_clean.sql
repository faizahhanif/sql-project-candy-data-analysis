CREATE TABLE candy_db.clean_sales LIKE candy_db.candy_sales;
INSERT INTO candy_db.clean_sales SELECT * FROM candy_db.candy_sales;
DESC candy_db.clean_sales;

START TRANSACTION; -- in case you want to rollback 
-- renaming column name
ALTER TABLE candy_db.clean_sales
	RENAME COLUMN `Row ID` TO row_id,
	RENAME COLUMN `Order ID` TO order_id,
	RENAME COLUMN `Order Date` TO order_date,
	RENAME COLUMN `Ship Date` TO ship_date,
	RENAME COLUMN `Ship Mode` TO ship_mode,
	RENAME COLUMN `Customer ID` TO customer_id,
	RENAME COLUMN `Country/Region` TO country_or_region,
	RENAME COLUMN `City` TO city,
	RENAME COLUMN `State/Province` TO state_or_province,
	RENAME COLUMN `Postal Code` TO postal_code,
	RENAME COLUMN `Division` TO division,
	RENAME COLUMN `Region` TO region,
	RENAME COLUMN `Product ID` TO product_id,
	RENAME COLUMN `Product Name` TO product_name,
	RENAME COLUMN `Sales` TO sales,
	RENAME COLUMN `Units` TO units,
	RENAME COLUMN `Gross Profit` TO gross_profit,
	RENAME COLUMN `Cost` TO cost;

-- changing the data type to the right data type
ALTER TABLE candy_db.clean_sales
	MODIFY COLUMN order_date DATE,
	MODIFY COLUMN ship_date DATE;

-- commit 
SET SQL_SAFE_UPDATES = 0;

-- deleting duplicates data 
DELETE FROM candy_db.clean_sales
WHERE row_id IS NOT NULL
  AND row_id NOT IN (
    SELECT * FROM (
      SELECT MIN(row_id)
      FROM candy_db.clean_sales
      GROUP BY order_id, customer_id, product_id
    ) AS keep
);


