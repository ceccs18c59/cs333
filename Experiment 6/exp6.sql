--   Name: Thejus R
--   Reg no: CHN18CS118
--   Class: S5-C
--   Roll no: 59

use cs333;

-- a)
CREATE TABLE store (
	orderno INT,
    code VARCHAR(5) PRIMARY KEY,
    item VARCHAR(20),
    quatity INT,
    price FLOAT,
    discount FLOAT,
    mrp FLOAT		
);

-- b)
INSERT INTO store VALUES(1,'c1','Bread', 2, 30, 5, 35),
(2,'c2','Milk', 1, 45, 5, 50),
(3,'c3','Chips', 2, 42.5, 12.5, 55),
(4,'c4','Sugar', 1, 80, 0, 80);

-- c)
SELECT * FROM store;

-- d)
CREATE VIEW storeview
AS 
SELECT item, quatity
FROM store;

-- e)
INSERT INTO Store VALUES (5,'c5','Soap', 1, 25.5, 4.5, 30);
SELECT * FROM storeview;

-- f)
DROP VIEW storeview;