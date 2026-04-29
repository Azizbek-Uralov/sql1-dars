CREATE DATABASE LIBRARY
USE LIBRARY

CREATE TABLE BOOKS(BOOKID INT, 
TITLE VARCHAR(200), 
AUTHOR VARCHAR(100), 
GENRE VARCHAR(50), 
YearPublished YEAR, 
PAGECOUNT INT, 
PRICE DECIMAL(6,2), 
AVAILABLE BOOLEAN)


INSERT INTO BOOKS VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925, 180, 10.99, TRUE);

INSERT INTO BOOKS VALUES (2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 281, 12.50, TRUE);

INSERT INTO BOOKS VALUES (3, '1984', 'George Orwell', 'Dystopian', 1949, 328, 11.00, TRUE);

INSERT INTO BOOKS VALUES (4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 279, 9.99, FALSE);

INSERT INTO BOOKS VALUES (5, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 310, 14.25, TRUE);

INSERT INTO BOOKS VALUES (6, 'Moby Dick', 'Herman Melville', 'Adventure', 1851, 635, 13.40, FALSE);

INSERT INTO BOOKS VALUES (7, 'War and Peace', 'Leo Tolstoy', 'Historical', 1869, 1225, 20.00, TRUE);

INSERT INTO BOOKS VALUES (8, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 214, 10.75, TRUE);

INSERT INTO BOOKS VALUES (9, 'Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 311, 11.80, FALSE);

INSERT INTO BOOKS VALUES (10, 'The Alchemist', 'Paulo Coelho', 'Philosophical', 1988, 208, 9.50, TRUE);

INSERT INTO BOOKS VALUES (11, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 1997, 309, 15.99, TRUE);

INSERT INTO BOOKS VALUES (12, 'The Da Vinci Code', 'Dan Brown', 'Thriller', 2003, 454, 13.99, FALSE);

INSERT INTO BOOKS VALUES (13, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954, 1178, 25.00, TRUE);

INSERT INTO BOOKS VALUES (14, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological', 1866, 671, 14.60, TRUE);

INSERT INTO BOOKS VALUES (15, 'The Kite Runner', 'Khaled Hosseini', 'Drama', 2003, 371, 12.80, TRUE);



select * from books WHERE YearPublished>2015;

+--------+--------------------+------------------+---------------+---------------+-----------+-------+-----------+
| BOOKID | TITLE              | AUTHOR           | GENRE         | YearPublished | PAGECOUNT | PRICE | AVAILABLE |
+--------+--------------------+------------------+---------------+---------------+-----------+-------+-----------+
|     19 | The Silent Patient | Alex Michaelides | Psychological |          2019 |       336 | 15.00 |         1 |
|     20 | Atomic Habits      | James Clear      | Self-help     |          2018 |       320 | 16.00 |         1 |
+--------+--------------------+------------------+---------------+---------------+-----------+-------+-----------+

select * from books ORDER by PAGECOUNT DESC limit 3;


+--------+-----------------------+----------------+----------+---------------+-----------+-------+-----------+
| BOOKID | TITLE                 | AUTHOR         | GENRE    | YearPublished | PAGECOUNT | PRICE | AVAILABLE |
+--------+-----------------------+----------------+----------+---------------+-----------+-------+-----------+
|     13 | The Lord of the Rings | J.R.R. Tolkien | Fantasy  |          1954 |      1178 | 25.00 |         1 |
|     12 | The Da Vinci Code     | Dan Brown      | Thriller |          2003 |       454 | 13.99 |         0 |
|     18 | Gone Girl             | Gillian Flynn  | Thriller |          2012 |       422 | 14.80 |         0 |
+--------+-----------------------+----------------+----------+---------------+-----------+-------+-----------+

select * from books WHERE AUTHOR like "ali%";

+--------+-------------------------------+-------------+------------+---------------+-----------+-------+-----------+
| BOOKID | TITLE                         | AUTHOR      | GENRE      | YearPublished | PAGECOUNT | PRICE | AVAILABLE |
+--------+-------------------------------+-------------+------------+---------------+-----------+-------+-----------+
|     21 | Modern Web Development        | Ali Karimov | Technology |          2015 |       350 | 18.50 |         1 |
|     22 | Data Science Basics           | Ali Hasan   | Education  |          2018 |       420 | 20.00 |         1 |
|     23 | Python Programming            | Ali Reza    | Technology |          2020 |       390 | 17.75 |         1 |
|     24 | Business Strategy 101         | Ali Akbar   | Business   |          2016 |       280 | 14.30 |         0 |
|     25 | Artificial Intelligence Guide | Ali Rahman  | Technology |          2021 |       500 | 22.00 |         1 |
+--------+-------------------------------+-------------+------------+---------------+-----------+-------+-----------+

select JSON_ARRAYAGG(title), COUNT(title) as G_soni from books group by genre;

+-----------------------------------------------------------------------------------+--------+
| JSON_ARRAYAGG(title)                                                              | G_soni |
+-----------------------------------------------------------------------------------+--------+
| ["Business Strategy 101"]                                                         |      1 |
| ["The Great Gatsby"]                                                              |      1 |
| ["The Kite Runner"]                                                               |      1 |
| ["1984", "Brave New World", "The Hunger Games"]                                   |      3 |
| ["Data Science Basics"]                                                           |      1 |
| ["The Hobbit", "Harry Potter and the Sorcerer's Stone", "The Lord of the Rings"]  |      3 |
| ["To Kill a Mockingbird", "The Catcher in the Rye"]                               |      2 |
| ["The Alchemist"]                                                                 |      1 |
| ["The Silent Patient"]                                                            |      1 |
| ["The Fault in Our Stars"]                                                        |      1 |
| ["Atomic Habits"]                                                                 |      1 |
| ["Modern Web Development", "Python Programming", "Artificial Intelligence Guide"] |      3 |
| ["The Da Vinci Code", "Gone Girl"]                                                |      2 |
+-----------------------------------------------------------------------------------+--------+