-- Creating a database "cs333"
CREATE DATABASE cs333;

USE cs333;

-- Creating a table named "student"
CREATE TABLE student
(
    sno INT NOT NULL,
    name VARCHAR(25) NOT NULL,
    dept VARCHAR(25) NOT NULL,
    mark INT NOT NULL,
    PRIMARY KEY(sno)
);

-- Added a column "age" to student
ALTER TABLE student
ADD age INT;

-- Inserting first row into TABLE
INSERT INTO student
    (sno,name,dept,mark,age)
VALUES
    (59, 'Thejus R', 'CS', 76, 21);

-- Display all from TABLE
SELECT *
FROM student;

-- Changing the datatype of a Column
ALTER TABLE student ALTER COLUMN dept varchar(50);

-- Dropping a column 
ALTER TABLE student DROP COLUMN mark;

-- Display all from TABLE
SELECT *
FROM student;

-- Renaming the TABLE
EXEC sp_rename 'student','students';

-- Dropping a TABLE
DROP TABLE students;