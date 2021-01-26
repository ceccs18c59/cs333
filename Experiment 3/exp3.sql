--   Name: Thejus R
--   Reg no: CHN18CS118
--   Class: S5-C
--   Roll no: 59

USE cs333;

#1
CREATE TABLE employee (
	empid VARCHAR(4) NOT NULL,
	name VARCHAR(10) NOT NULL,
	datejoined DATE,
	salary INT NOT NULL,
	PRIMARY KEY (empid)
);

CREATE TABLE employeedetails (
	empid VARCHAR(4) NOT NULL,
	departmentid int,
	FOREIGN KEY (empid)
	REFERENCES employee(empid)
);

INSERT INTO employee VALUES('e1', 'Jonny', '2012-12-03', '6000'),
('e2', 'Jermy', '2014-03-06', '9000'),
('e3', 'John', '2016-01-21', '30000'),
('e4', 'Edison', '2015-01-11', '40000');

INSERT INTO employeedetails VALUES('e1', '3'), ('e3', '2'),
('e4', '1');

#2
SELECT * FROM employee
WHERE empid in(SELECT empid FROM employeedetails);

#3
SELECT * FROM employee
WHERE empid NOT IN(SELECT empid FROM employeedetails);