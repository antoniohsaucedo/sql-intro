CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
person_id INTEGER,
product_name VARCHAR(100),
product_price NUMERIC,
quantity INTEGER );

INSERT INTO orders ( person_id, product_name, product_price, quantity )
VALUES ( 0,'Product', 12.50, 2 );


SELECT * FROM orders;


SELECT SUM(quantity) FROM orders;


SELECT SUM(product_price * quantity) FROM orders;


SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;