create table noutbook(brand VARCHAR(50), model VARCHAR(50), cpu VARCHAR(50), frequence real, ram int, os VARCHAR(50), price int);


INSERT INTO noutbook VALUES
("Apple", "MacBook Pro M1", "Apple M1", 3.2, 8, "macOS", 1800),
("Apple", "MacBook Air M2", "Apple M2", 3.5, 8, "macOS", 1500),
("ASUS", "ZenBook 14", "Intel Core i5", 2.5, 8, "Windows 10", 900),
("ASUS", "ROG Strix", "AMD Ryzen 7", 3.6, 16, "Windows 11", 1700),
("HP", "Pavilion 15", "Intel Core i5", 2.4, 8, "Windows 10", 800),
("HP", "Omen 16", "Intel Core i7", 3.8, 16, "Windows 11", 1600),
("Dell", "XPS 13", "Intel Core i7", 3.5, 16, "Windows 11", 2000),
("Dell", "Inspiron 15", "Intel Core i5", 2.3, 8, "Windows 10", 700),
("Lenovo", "ThinkPad X1", "Intel Core i7", 3.9, 16, "Ubuntu 20.04", 2100),
("Lenovo", "IdeaPad 3", "AMD Ryzen 5", 2.1, 8, "Windows 10", 650),
("Acer", "Aspire 5", "Intel Core i5", 2.6, 8, "Windows 10", 750),
("Acer", "Predator Helios", "Intel Core i7", 3.7, 16, "Windows 11", 1800),
("MSI", "GF63 Thin", "Intel Core i5", 2.5, 8, "Windows 10", 850),
("MSI", "GE76 Raider", "Intel Core i9", 4.5, 32, "Windows 11", 2800),
("Samsung", "Galaxy Book Pro", "Intel Core i7", 3.1, 16, "Windows 11", 1400),
("Samsung", "Galaxy Book Flex", "Intel Core i5", 2.7, 8, "Windows 10", 1100),
("Huawei", "MateBook D15", "AMD Ryzen 5", 2.3, 8, "Windows 10", 600),
("Huawei", "MateBook X Pro", "Intel Core i7", 3.6, 16, "Windows 11", 1900),
("Toshiba", "Dynabook Tecra", "Intel Core i5", 2.8, 8, "Windows 10", 950),
("Toshiba", "Satellite Pro", "Intel Core i7", 3.2, 16, "Windows 11", 1300);

select * from noutbook ORDER by price desc limit 1;

+-------+-------------+---------------+-----------+------+------------+-------+
| brand | model       | cpu           | frequence | ram  | os         | price |
+-------+-------------+---------------+-----------+------+------------+-------+
| MSI   | GE76 Raider | Intel Core i9 |       4.5 |   32 | Windows 11 |  2800 |
+-------+-------------+---------------+-----------+------+------------+-------+

select * from noutbook order by price LIMIT 1;

+--------+--------------+-------------+-----------+------+------------+-------+
| brand  | model        | cpu         | frequence | ram  | os         | price |
+--------+--------------+-------------+-----------+------+------------+-------+
| Huawei | MateBook D15 | AMD Ryzen 5 |       2.3 |    8 | Windows 10 |   600 |
+--------+--------------+-------------+-----------+------+------------+-------+

select frequence from noutbook WHERE price BETWEEN 400 and 1000 AND cpu LIKE "intel%";

+-----------+
| frequence |
+-----------+
|       2.5 |
|       2.4 |
|       2.3 |
|       2.6 |
|       2.5 |
|       2.8 |
+-----------+

select count(*) AS nechtaligi from noutbook WHERE brand LIKE "apple%";

+------------+
| nechtaligi |
+------------+
|          2 |
+------------+

SELECT price from noutbook WHERE os like "windows%" and ram = 8 and brand = "asus" ORDER by price;

+-------+
| price |
+-------+
|   900 |
+-------+