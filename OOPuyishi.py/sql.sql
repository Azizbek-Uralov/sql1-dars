\! cls -- oynani tozalaydi 

show databases; -- mavjud file lar ro'yxatini qaytaradi

CREATE DATABASE found191; -- yangi database yaratadi
CREATE DATABASE IF NOT EXISTS found191; -- mavjud bo'lmasagina yaratgin

DROP DATABASE IF EXISTS olmacha; -- mavjud bo'lsa o'chiradi database ni

USE found191; -- ko'rsatilgan database ichiga kiradi

SELECT 2+2;
+-----+
| 2+2 |
+-----+
|   4 |
+-----+

SELECT now();
+---------------------+
| now()               |
+---------------------+
| 2026-04-17 14:35:49 |
+---------------------+

SELECT length("salom");
+-----------------+
| length("salom") |
+-----------------+
|               5 |
+-----------------+

SELECT CONCAT("Ali", " ", "Valiyev") AS full_name;
+-------------+
| full_name   |
+-------------+
| Ali Valiyev |
+-------------+


SELECT "Ali" AS name, "Valiyev" AS second, CONCAT("Ali" , " ", "VAliyev") AS full_name;
+------+---------+-------------+
| name | second  | full_name   |
+------+---------+-------------+
| Ali  | Valiyev | Ali VAliyev |
+------+---------+-------------+

CREATE TABLE talabalar(id INT, name VARCHAR(50), birh DATE, salary REAL);
DROP TABLE IF EXISTS talabalar; -- ko'satilgan tableni o'chiradi
SHOW tables; -- boshqarib turgan database ichidagi mavjud table lar ro'yxati

INSERT INTO talabaLAr VALUES(1, "Aziz", "2009-07-11", 1000);
INSERT INTO talabalar VALUES(2, "Karim", "2015-11-02", 5000),
                            (3, "Aziz", "2009-07-01", 4700),
                            (4, "Olim", "2005-12-19", 3500);

INSERT INTO talabalar(name, salary) VALUES("Ali", 3000);


SELECT * FROM talabalar;
+------+-------+------------+--------+
| id   | name  | birh       | salary |
+------+-------+------------+--------+
|    1 | Aziz  | 2009-07-11 |   1000 |
|    2 | Karim | 2015-11-02 |   5000 |
|    3 | Aziz  | 2009-07-01 |   4700 |
|    4 | Olim  | 2005-12-19 |   3500 |
+------+-------+------------+--------+


SELECT name, salary FROM talabalar;
+-------+--------+
| name  | salary |
+-------+--------+
| Aziz  |   1000 |
| Karim |   5000 |
| Aziz  |   4700 |
| Olim  |   3500 |
+-------+--------+

SELECT name, YEAR(birh) AS yil, salary FROM talabaLAr;
+-------+------+--------+
| name  | yil  | salary |
+-------+------+--------+
| Aziz  | 2009 |   1000 |
| Karim | 2015 |   5000 |
| Aziz  | 2009 |   4700 |
| Olim  | 2005 |   3500 |
+-------+------+--------+

SELECT id, name, YEAR(NOW())-YEAR(birh) AS age FROM talabalar;
+------+-------+------+
| id   | name  | age  |
+------+-------+------+
|    1 | Aziz  |   17 |
|    2 | Karim |   11 |
|    3 | Aziz  |   17 |
|    4 | Olim  |   21 |
| NULL | Ali   | NULL |
+------+-------+------+

----------------------------------Filtirlash

SELECT * FROM talabalar WHERE id = 1;
+------+------+------------+--------+
| id   | name | birh       | salary |
+------+------+------------+--------+
|    1 | Aziz | 2009-07-11 |   1000 |
+------+------+------------+--------+


SELECT * FROM talabalar WHERE name = "Aziz";
+------+------+------------+--------+
| id   | name | birh       | salary |
+------+------+------------+--------+
|    1 | Aziz | 2009-07-11 |   1000 |
|    3 | Aziz | 2009-07-01 |   4700 |
+------+------+------------+--------+

SELECT * FROM talabaLAr WHERE salary>=3000 and salary<=4800;
SELECT * FROM talabaLAr WHERE salary BETWEEN 3000 and 4800;
+------+------+------------+--------+
| id   | name | birh       | salary |
+------+------+------------+--------+
|    3 | Aziz | 2009-07-01 |   4700 |
|    4 | Olim | 2005-12-19 |   3500 |
| NULL | Ali  | NULL       |   3000 |
+------+------+------------+--------+

SELECT * FROM talabalar WHERE MONTH(birh)=11 OR MONTH(birh)=7;
SELECT * FROM talabalar WHERE MONTH(birh) IN (11, 7);
+------+-------+------------+--------+
| id   | name  | birh       | salary |
+------+-------+------------+--------+
|    1 | Aziz  | 2009-07-11 |   1000 |
|    2 | Karim | 2015-11-02 |   5000 |
|    3 | Aziz  | 2009-07-01 |   4700 |
+------+-------+------------+--------+

SELECT * FROM talabalar WHERE name LIKE "A%";
+------+------+------------+--------+
| id   | name | birh       | salary |
+------+------+------------+--------+
|    1 | Aziz | 2009-07-11 |   1000 |
|    3 | Aziz | 2009-07-01 |   4700 |
| NULL | Ali  | NULL       |   3000 |
+------+------+------------+--------+

-- a%  -> boshida a bo'lishi shart oxiri qiziq emas
-- %a  -> oxirida a bo'lishi shart boshi qiziq emas
-- %a% -> a bo'sa bo'ldi

SELECT * FROM talabalar WHERE LENGTH(name) = 3 AND name LIKE "A%";
SELECT * FROM talabalar WHERE name LIKE "a__";
+------+------+------+--------+
| id   | name | birh | salary |
+------+------+------+--------+
| NULL | Ali  | NULL |   3000 |
+------+------+------+--------+

------------------------------------- cheKLOV

SELECT * FROM talabaLAr WHERE name LIKE "%A%" LIMIT 1;
SELECT * FROM talabaLAr WHERE name LIKE "%A%" LIMIT 1 OFFSET 1;
+------+-------+------------+--------+
| id   | name  | birh       | salary |
+------+-------+------------+--------+
|    2 | Karim | 2015-11-02 |   5000 |
+------+-------+------------+--------+

------------------------------------- SORTLASH

SELECT * FROM talabalar ORDER BY salary;
+------+-------+------------+--------+
| id   | name  | birh       | salary |
+------+-------+------------+--------+
|    1 | Aziz  | 2009-07-11 |   1000 |
| NULL | Ali   | NULL       |   3000 |
|    4 | Olim  | 2005-12-19 |   3500 |
|    3 | Aziz  | 2009-07-01 |   4700 |
|    2 | Karim | 2015-11-02 |   5000 |
+------+-------+------------+--------+

SELECT * FROM talabalar ORDER BY salary DESC;
+------+-------+------------+--------+
| id   | name  | birh       | salary |
+------+-------+------------+--------+
|    2 | Karim | 2015-11-02 |   5000 |
|    3 | Aziz  | 2009-07-01 |   4700 |
|    4 | Olim  | 2005-12-19 |   3500 |
| NULL | Ali   | NULL       |   3000 |
|    1 | Aziz  | 2009-07-11 |   1000 |
+------+-------+------------+--------+


SELECT * FROM talabalar WHERE MONTH(birh) BETWEEN 6 AND 8 ORDER BY salary DESC;
+------+------+------------+--------+
| id   | name | birh       | salary |
+------+------+------------+--------+
|    3 | Aziz | 2009-07-01 |   4700 |
|    1 | Aziz | 2009-07-11 |   1000 |
+------+------+------------+--------+

SELECT * FROM talabalar ORDER BY YEAR(birh);
+------+-------+------------+--------+
| id   | name  | birh       | salary |
+------+-------+------------+--------+
| NULL | Ali   | NULL       |   3000 |
|    4 | Olim  | 2005-12-19 |   3500 |
|    1 | Aziz  | 2009-07-11 |   1000 |
|    3 | Aziz  | 2009-07-01 |   4700 |
|    2 | Karim | 2015-11-02 |   5000 |
+------+-------+------------+--------+

SELECT * FROM talabalar ORDER BY YEAR(birh), DAY(birh);
+------+-------+------------+--------+
| id   | name  | birh       | salary |
+------+-------+------------+--------+
| NULL | Ali   | NULL       |   3000 |
|    4 | Olim  | 2005-12-19 |   3500 |
|    3 | Aziz  | 2009-07-01 |   4700 |
|    1 | Aziz  | 2009-07-11 |   1000 |
|    2 | Karim | 2015-11-02 |   5000 |
+------+-------+------------+--------+


SELECT * FROM talabalar ORDER BY salary DESC LIMIT 1;

------------------------------------DELETE 

DELETE FROM talabalar WHERE name = "olim";

------------------------------------Update

UPDATE talabalar SET id = 10;
UPDATE talabaLAr SET id = 5, name = "Karima";
UPDATE talabaLAr SET id = 1, name = "Ali" WHERE YEAR(BIRH) < 2010;