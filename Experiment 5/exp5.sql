--   Name: Thejus R
--   Reg no: CHN18CS118
--   Class: S5-C
--   Roll no: 59


USE cs333;

-- a) create a table class. Fields are name & id--
CREATE TABLE class (
	name VARCHAR(15),
    id CHAR(5)
);

-- b) Insert values into the table --
INSERT INTO class VALUES ('Wayne' , 1),
('Ryan' , 2),
('Edwin' , 3);

-- c) Display the table --
SELECT * FROM class;

-- d) Apply commit, save point and rollback commands --
START TRANSACTION;

INSERT INTO class VALUES 
('Paul', '4'),('David', '5');
SAVEPOINT A;

INSERT INTO class VALUES 
('John', '6'),('Roy', '7');
SAVEPOINT B;

ROLLBACK TO A;
COMMIT;

START TRANSACTION;
SAVEPOINT C;

INSERT INTO class VALUES('Gary', '8');
ROLLBACK TO C;

SELECT * FROM class;
