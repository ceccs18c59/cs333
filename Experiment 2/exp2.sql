--Name:    Thejus R
--KTU Reg: CHN18CS118

-- Using cs333 database
USE cs333;

--Creating a table 'employee'
#1
CREATE TABLE employee (
   code VARCHAR(4) NOT NULL,
   name VARCHAR(10) NOT NULL,
   designation VARCHAR(30) NOT NULL,
   dob DATE NOT NULL,
   salary INT NOT NULL,
   PRIMARY KEY (code));
  

--Adding Data to 'employee'
#2
INSERT INTO employee (code, name, designation, dob, salary)
VALUES ('1', 'John', 'Manager', '1995-07-13', '15000'),
       ('2', 'Sharon', 'Assistant Engineer', '1997-10-06', '6000');

-- Display all 
#3
SELECT * FROM employee;

-- Updating data in the table
#4
UPDATE employee SET SALARY = 20000 WHERE code = '1';

-- Deleting a Row in table
#5
DELETE FROM employee
WHERE code = '2';