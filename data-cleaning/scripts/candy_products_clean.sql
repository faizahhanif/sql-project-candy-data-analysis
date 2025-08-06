CREATE TABLE candy_db.clean_products LIKE candy_db.candy_products;
INSERT INTO candy_db.clean_products SELECT * FROM candy_db.candy_products;
DESC candy_db.clean_products;

ALTER TABLE candy_db.clean_products
	RENAME COLUMN `Division` TO division,
    RENAME COLUMN `Product Name` TO product_name,
    RENAME COLUMN `Factory` TO factory,
    RENAME COLUMN `Product ID` TO product_id,
    RENAME COLUMN `Unit Price` TO unit_price,
    RENAME COLUMN `Unit Cost` TO unit_cost