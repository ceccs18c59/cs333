--   Name: Thejus R
--   Reg no: CHN18CS118
--   Class: S5-C
--   Roll no: 59

USE cs333;

-- a.	Create a table store. Fields are order no, code, item, quantity, price, discount, mrp
CREATE TABLE store (
	order_no INT PRIMARY KEY NOT NULL,
    code VARCHAR(5),
    item VARCHAR(20) NOT NULL,
    quantity INT,
    price FLOAT NOT NULL,
    discount FLOAT,
    mrp FLOAT		
);

-- b.	Insert values into the table
INSERT INTO store VALUES(1,'c1','Cup', 4, 29, 6, 35),
(2,'c2','Milk', 5, 45, 5, 50),
(3,'c3','Soap', 10, 36, 4, 40),
(4,'c4','Salt', 15, 12, 3, 15);

-- c.	Display the table
SELECT * FROM store;

-- d.	Write an SQL query to display the reminder, if the amount of  each item in store is divided by 9.
SELECT (MOD(price, 9)) AS remainder
FROM store;

-- e.	Write SQL query to display the amount in store and its square
SELECT price, POWER(price, 2) As squaredPrice
FROM store;

-- f.	Write SQL query to divide the amount in stock of each item by 7 in store table and display the result round to the nearest integer.
SELECT ROUND(mrp DIV 7) AS roundedValue FROM store;