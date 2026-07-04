CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(150),
    category VARCHAR(100),
    price DECIMAL(10,2),
    stock_quantity INT,
    discount_percent DECIMAL(5,2)
);

INSERT INTO products (product_name,category,price,stock_quantity,discount_percent)
VALUES
('Laptop','Electronics',850000,12,10),
('Mouse','Electronics',12000,50,NULL),
('Keyboard','Electronics',25000,35,5),
('Monitor','Electronics',180000,20,15),
('Desk Chair','Furniture',95000,10,NULL),
('Office Desk','Furniture',145000,8,20),
('Printer','Electronics',210000,15,12),
('Notebook','Stationery',2500,100,NULL),
('Pen Pack','Stationery',1800,250,5),
('USB Drive','Electronics',15000,60,NULL);