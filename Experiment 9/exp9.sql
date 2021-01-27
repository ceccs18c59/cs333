--   Name: Thejus R
--   Reg no: CHN18CS118
--   Class: S5-C
--   Roll no: 59

USE cs333;
-- #1 Create table employee with fields Code , name , dob , designation , salary.
CREATE TABLE Employee(
    code VARCHAR(5) PRIMARY KEY,
    name VARCHAR(15),
    dob date,
    designation VARCHAR(30),
    salary FLOAT);

INSERT INTO Employee VALUES
('e1','Wayne','1990-11-07','General Manager',80000),
('e2','Scott','1994-04-12','Assistant Manager',50000),
('e3','Ashley','1994-07-17','Clerk',15000),
('e4','Parker','1995-01-12','Clerk',15000);

-- #2 Display code, name, and designation in descending order of the name.
SELECT * FROM Employee ORDER BY name DESC;

-- #3 Create table deposit with fields baccno , branch_name , amount.
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(30),
    amount FLOAT);

INSERT INTO Deposit VALUES
(091000019,'Manchester',290000.25),
(011401533,'Cheshire',150000),
(021000021,'Manchester',500000),
(011407654,'Yorkshire',250000.50),
(011401576,'Yorkshire',100000);

-- #4 Give branch name and details of deposit table.
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;