create database sales;
use sales
CREATE TABLE sales (
    id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    quantity INT,
    sale_date DATE
);
INSERT INTO sales VALUES (1, 'Laptop', 'Electronics', 800, 2, '2025-01-01');
INSERT INTO sales VALUES (2, 'Phone', 'Electronics', 600, 3, '2025-01-01');
INSERT INTO sales VALUES (3, 'TV', 'Electronics', 900, 1, '2025-01-02');
INSERT INTO sales VALUES (4, 'Headphones', 'Electronics', 150, 5, '2025-01-03');

INSERT INTO sales VALUES (5, 'Table', 'Furniture', 300, 1, '2025-01-01');
INSERT INTO sales VALUES (6, 'Chair', 'Furniture', 100, 4, '2025-01-02');
INSERT INTO sales VALUES (7, 'Sofa', 'Furniture', 1200, 1, '2025-01-03');
INSERT INTO sales VALUES (8, 'Bed', 'Furniture', 900, 1, '2025-01-04');

INSERT INTO sales VALUES (9, 'T-shirt', 'Clothing', 40, 6, '2025-01-01');
INSERT INTO sales VALUES (10, 'Jeans', 'Clothing', 70, 3, '2025-01-02');
INSERT INTO sales VALUES (11, 'Jacket', 'Clothing', 120, 2, '2025-01-03');
INSERT INTO sales VALUES (12, 'Shoes', 'Clothing', 90, 4, '2025-01-04');

INSERT INTO sales VALUES (13, 'Apple', 'Food', 2, 20, '2025-01-01');
INSERT INTO sales VALUES (14, 'Bread', 'Food', 3, 15, '2025-01-02');
INSERT INTO sales VALUES (15, 'Milk', 'Food', 4, 10, '2025-01-03');
INSERT INTO sales VALUES (16, 'Cheese', 'Food', 8, 5, '2025-01-04');

INSERT INTO sales VALUES (17, 'Notebook', 'Stationery', 5, 10, '2025-01-01');
INSERT INTO sales VALUES (18, 'Pen', 'Stationery', 2, 25, '2025-01-02');
INSERT INTO sales VALUES (19, 'Marker', 'Stationery', 4, 12, '2025-01-03');
INSERT INTO sales VALUES (20, 'Folder', 'Stationery', 6, 8, '2025-01-04');


-- mashqlar

select * from sales;

+----+--------------+-------------+-------+----------+------------+
| id | product_name | category    | price | quantity | sale_date  |
+----+--------------+-------------+-------+----------+------------+
|  1 | Laptop       | Electronics |   800 |        2 | 2025-01-01 |
|  2 | Phone        | Electronics |   600 |        3 | 2025-01-01 |
|  3 | TV           | Electronics |   900 |        1 | 2025-01-02 |
|  4 | Headphones   | Electronics |   150 |        5 | 2025-01-03 |
|  5 | Table        | Furniture   |   300 |        1 | 2025-01-01 |
|  6 | Chair        | Furniture   |   100 |        4 | 2025-01-02 |
|  7 | Sofa         | Furniture   |  1200 |        1 | 2025-01-03 |
|  8 | Bed          | Furniture   |   900 |        1 | 2025-01-04 |
|  9 | T-shirt      | Clothing    |    40 |        6 | 2025-01-01 |
| 10 | Jeans        | Clothing    |    70 |        3 | 2025-01-02 |
| 11 | Jacket       | Clothing    |   120 |        2 | 2025-01-03 |
| 12 | Shoes        | Clothing    |    90 |        4 | 2025-01-04 |
| 13 | Apple        | Food        |     2 |       20 | 2025-01-01 |
| 14 | Bread        | Food        |     3 |       15 | 2025-01-02 |
| 15 | Milk         | Food        |     4 |       10 | 2025-01-03 |
| 16 | Cheese       | Food        |     8 |        5 | 2025-01-04 |
| 17 | Notebook     | Stationery  |     5 |       10 | 2025-01-01 |
| 18 | Pen          | Stationery  |     2 |       25 | 2025-01-02 |
| 19 | Marker       | Stationery  |     4 |       12 | 2025-01-03 |
| 20 | Folder       | Stationery  |     6 |        8 | 2025-01-04 |
+----+--------------+-------------+-------+----------+------------+

select category, count(*) from sales group by category;

+-------------+----------+
| category    | count(*) |
+-------------+----------+
| Electronics |        4 |
| Furniture   |        4 |
| Clothing    |        4 |
| Food        |        4 |
| Stationery  |        4 |
+-------------+----------+

-- 2-masala

SELECT category, SUM(price) AS total_sales
FROM sales
GROUP BY category;

+-------------+-------------+
| category    | total_sales |
+-------------+-------------+
| Electronics |        2450 |
| Furniture   |        2500 |
| Clothing    |         320 |
| Food        |          17 |
| Stationery  |          17 |
+-------------+-------------+

-- 3-masala

SELECT category, AVG(price) AS avg_price
FROM sales
GROUP BY category;

+-------------+-----------+
| category    | avg_price |
+-------------+-----------+
| Electronics |  612.5000 |
| Furniture   |  625.0000 |
| Clothing    |   80.0000 |
| Food        |    4.2500 |
| Stationery  |    4.2500 |
+-------------+-----------+

-- 4-masala

SELECT sale_date, SUM(price * quantity) AS total_revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date;

+------------+---------------+
| sale_date  | total_revenue |
+------------+---------------+
| 2025-01-01 |          4030 |
| 2025-01-02 |          1605 |
| 2025-01-03 |          2278 |
| 2025-01-04 |          1348 |
+------------+---------------+

-- 5-masala

SELECT SUM(price * quantity) AS total_revenue
FROM sales
WHERE category = 'Electronics';
+---------------+
| total_revenue |
+---------------+
|          5050 |
+---------------+

-- 6-masala

SELECT category, SUM(price * quantity) AS total_revenue
FROM sales
GROUP BY category
HAVING SUM(price * quantity) > 2000;

+-------------+---------------+
| category    | total_revenue |
+-------------+---------------+
| Electronics |          5050 |
| Furniture   |          2800 |
+-------------+---------------+

-- 7-masala

SELECT category, AVG(price) AS avg_price
FROM sales
GROUP BY category
HAVING AVG(price) > 100;

+-------------+-----------+
| category    | avg_price |
+-------------+-----------+
| Electronics |  612.5000 |
| Furniture   |  625.0000 |
+-------------+-----------+

-- 8-masala

SELECT COUNT(*) AS total_products_sold
FROM sales
WHERE sale_date = '2025-01-01';

+---------------------+
| total_products_sold |
+---------------------+
|                   6 |
+---------------------+

-- 9-masala

SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
ORDER BY total_quantity DESC
LIMIT 1;

+------------+----------------+
| category   | total_quantity |
+------------+----------------+
| Stationery |             55 |
+------------+----------------+

-- 10-masala

SELECT category, SUM(price * quantity) AS total_revenue
FROM sales
WHERE quantity > 3
GROUP BY category;

+-------------+---------------+
| category    | total_revenue |
+-------------+---------------+
| Electronics |           750 |
| Furniture   |           400 |
| Clothing    |           600 |
| Food        |           165 |
| Stationery  |           196 |
+-------------+---------------+