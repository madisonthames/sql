Table Person

1. 
CREATE TABLE person (
  person_id SERIAL,
  name VARCHAR(100),
  age INTEGER, 
  height INTEGER,
  city VARCHAR (100),
  favorite_color VARCHAR (100)
) 

2. 
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Madison Thames', 24, 190, 'Denver', 'Green')
VALUES ('Shelby Hill', 25, 210, 'Sherman', 'Burgundy')
VALUES ('Ryan Thames', 30, 240, 'Dallas', 'Blue')
VALUES ('Caylee Cook', 25, 195, 'Denver', 'Blue')
VALUES ('Jon Snow', 26, 220, 'Wall', 'Black')

3. 
SELECT * FROM person
ORDER BY height DESC

4. 
SELECT * FROM person
ORDER BY height ASC

5.
SELECT * FROM person
ORDER BY Age DESC

6.
SELECT * FROM person
WHERE age > 20

7.
SELECT * FROM person
WHERE age = 18

8. 
SELECT * FROM person
WHERE age < 20 OR age > 30

9.
SELECT * FROM person
WHERE age != 27

10.
SELECT * FROM person
WHERE favorite_color != 'red'

11.
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue'

12.
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green'

13.
SELECT * FROM person
WHERE FAVORITE_COLOR IN ('Orange', 'Green', 'Blue')

14.
SELECT * FROM person
WHERE FAVORITE_COLOR IN ('Yellow', 'Purple')


Table Orders

1.
CREATE TABLE orders (
  person_id SERIAL,
  product_name VARCHAR(100),
  PRODUCT_price NUMERIC,
  quantity INTEGER
)

2.
INSERT INTO orders (person_id, product_name, product_price, quantity) 
VALUES (12345, 'Lala Land Soundtrack Vinyl', 19.99, 1)

INSERT INTO orders (person_id, product_name, product_price, quantity) 
VALUES (12345, 'Game of Thrones Season 8 Soundtrack Vinyl', 29.99, 1)

INSERT INTO orders (person_id, product_name, product_price, quantity) 
VALUES (12345, 'The National High Violet Vinyl', 24.99, 1)

INSERT INTO orders (person_id, product_name, product_price, quantity) 
VALUES (23456, 'Harry Potter Series Book Collection', 59.99, 1)

INSERT INTO orders (person_id, product_name, product_price, quantity) 
VALUES (23456, 'The Lord of the Rings Book Collection', 39.99, 1)

3.
SELECT * FROM orders

4.
SELECT SUM(quantity) FROM orders

5.
SELECT SUM(product_price) FROM orders

6.
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 12345;


Table Artist

1.
INSERT INTO artist ( name ) VALUES ('The head and the Heart')

2.
SELECT * FROM artist 
ORDER BY name DESC LIMIT 10

3.
SELECT * FROM artist 
ORDER BY name ASC LIMIT 5

4.
SELECT * FROM artist 
WHERE name LIKE 'Black%'

5.
SELECT * FROM artist 
WHERE name LIKE '%Black%'


Table Employee

1.
SELECT first_name, last_name FROM employee 
WHERE city = 'Calgary'

2.
SELECT MAX(birth_date) FROM employee 

3.
SELECT MIN(birth_date) FROM employee 

4.
SELECT * FROM employee 
WHERE first_name = 'Nancy'

SELECT * FROM employee 
WHERE reports_to = 2

5.
SELECT COUNT (*) FROM employee 
WHERE city = 'Lethbridge'


Table Invoice

1.
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA'

2.
SELECT MAX(total) FROM invoice

3.
SELECT MIN(total) FROM invoice

4.
SELECT * FROM invoice
WHERE total > 5

5.
SELECT COUNT (*) FROM invoice
WHERE total > 5

6.
SELECT COUNT (*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

7.
SELECT AVG(total) FROM invoice

8.
SELECT SUM(total) FROM invoice

