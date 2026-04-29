CREATE table talaba(id int, ism VARCHAR(50), age int, bahosi int);
INSERT INTO talaba values(1, "Nozima", 15, 80), 
                        (2, "Karim", 15, 90),
                        (3, "Islom", 15, 50),    
                        (4, "Jasmina", 15, 75),
                        (5, "Mansur", 15, 100);
CREATE * from talaba;

+------+---------+------+--------+
| id   | ism     | age  | bahosi |
+------+---------+------+--------+
|    1 | Nozima  |   15 |     80 |
|    2 | Karim   |   15 |     90 |
|    3 | Islom   |   15 |     50 |
|    4 | Jasmina |   15 |     75 |
|    5 | Mansur  |   15 |    100 |
+------+---------+------+--------+

select * from talaba WHERE bahosi BETWEEN 90 and 100 order by ism;

+------+--------+------+--------+
| id   | ism    | age  | bahosi |
+------+--------+------+--------+
|    2 | Karim  |   15 |     90 |
|    5 | Mansur |   15 |    100 |
+------+--------+------+--------+

select * from talaba where bahosi BETWEEN 70 and 90 order by age DESC;

+------+---------+------+--------+
| id   | ism     | age  | bahosi |
+------+---------+------+--------+
|    1 | Nozima  |   15 |     80 |
|    4 | Jasmina |   15 |     75 |
+------+---------+------+--------+

select * from talaba WHERE bahosi < 70 order by bahosi;

+------+-------+------+--------+
| id   | ism   | age  | bahosi |
+------+-------+------+--------+
|    3 | Islom |   15 |     50 |
+------+-------+------+--------+

-- -----------------------------------


create database Milliy_Taomlar;
CREATE table Milliy_Taomlar(id int, taom_nomi VARCHAR(50), taom_masalliqlari VARCHAR(200));
INSERT INTO Milliy_Taomlar, VALUES
INSERT INTO taomlar VALUES (1, "Osh", "guruch, sabzi, gosht, yog, piyoz"),
                            (2, "Shashlik", "gosht, piyoz, ziravorlar"),
                            (3, "Lagmon", "xamir, gosht, sabzavotlar, ziravorlar"),
                            (4, "Manti", "xamir, qiyma gosht, piyoz"),
                            (5, "Somsa", "xamir, gosht, piyoz, ziravorlar"),
                            (6, "Chuchvara", "xamir, qiyma gosht, piyoz"),
                            (7, "Dimlama", "gosht, kartoshka, sabzi, karam, piyoz"),
                            (8, "Kabob", "gosht, yog, ziravorlar"),
                            (9, "Shorva", "gosht, kartoshka, sabzi, piyoz"),
                            (10, "Norin", "gosht, xamir, piyoz");

select * from taomlar WHERE taom_nomi like "%a";
+------+-----------+---------------------------------------+
| id   | taom_nomi | taom_masalliqlari                     |
+------+-----------+---------------------------------------+
|    5 | Somsa     | xamir, gosht, piyoz, ziravorlar       |
|    6 | Chuchvara | xamir, qiyma gosht, piyoz             |
|    7 | Dimlama   | gosht, kartoshka, sabzi, karam, piyoz |
|    9 | Shorva    | gosht, kartoshka, sabzi, piyoz        |
+------+-----------+---------------------------------------+

select * from taomlar where taom_masalliqlari like "%guruch%";

+------+-----------+----------------------------------+
| id   | taom_nomi | taom_masalliqlari                |
+------+-----------+----------------------------------+
|    1 | Osh       | guruch, sabzi, gosht, yog, piyoz |
+------+-----------+----------------------------------+

CREATE table oquvchi(id int, ism VARCHAR(50), tugilgan_sana DATE, bahosi int);
INSERT INTO oquvchi VALUES
(1, "Ali", "2005-03-12", 5),
(2, "Vali", "2006-07-25", 4),
(3, "Hasan", "2005-11-03", 5),
(4, "Husan", "2006-01-15", 3),
(5, "Dilshod", "2005-09-09", 4),
(5, "Sardor", "2005-12-21", 5),
(7, "Jasur", "2006-04-18", 3),
(8, "Bekzod", "2005-06-30", 4),
(9, "Akmal", "2006-08-14", 5),
(10, "Shoxrux", "2005-02-27", 4);

select * FROM oquvchi where MONTH(tugilgan_sana) in (1, 2, 12);

+------+---------+---------------+--------+
| id   | ism     | tugilgan_sana | bahosi |
+------+---------+---------------+--------+
|    4 | Husan   | 2006-01-15    |      3 |
|    5 | Sardor  | 2005-12-21    |      5 |
|   10 | Shoxrux | 2005-02-27    |      4 |
+------+---------+---------------+--------+

