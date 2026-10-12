CREATE DATABASE shop;
USE shop;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

INSERT INTO products
VALUES
(1, 'Jali', 5000),
(2, 'Stopper', 13500),
(3, 'Connector', 7000),
(4, 'Magnet', 17000);


CREATE TABLE purchase (
    purchase_id INT PRIMARY KEY,
    product_id INT,
    purchase_date DATE,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO purchase
VALUES
(1, 1, '2026-09-03', 2),
(2, 2, '2026-09-08', 1),
(3, 3, '2026-09-08', 3),
(4, 4, '2026-09-17', 2);


CREATE TABLE sale (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_name VARCHAR(50),
    sale_date DATE,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO sale
VALUES
(1, 1, 'Patel Tanay', '2026-09-15', 1),
(2, 2, 'Patel Tirth', '2026-09-15', 1),
(3, 3, 'Patel Het', '2026-09-20', 2),
(4, 4, 'Patel Archi', '2026-09-19', 1);


SELECT * FROM products;
SELECT * FROM purchase;
SELECT * FROM sale;