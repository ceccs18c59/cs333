--   Name: Thejus R
--   Reg no: CHN18CS118
--   Class: S5-C
--   Roll no: 59

CREATE DATABASE lab4;
USE lab4;

a:

CREATE TABLE department (
    code CHAR(4) PRIMARY KEY,
    title VARCHAR(20),
    dept_name VARCHAR(20) UNIQUE,
    dept_id CHAR(4),
    salary FLOAT CHECK(Salary>2000));

INSERT INTO department (code,title,dept_name,dept_id,salary)
VALUES('csc', 'BTECH', 'Computer', 'cs', 5000),
	  ('etl', 'BTECH', 'Electrical', 'eee', 3000),
	  ('ece', 'BTECH', 'Electronics', 'ee', 4000);
    
    
 b:
 
CREATE TABLE instructor (
	name VARCHAR(15) NOT NULL,
	code CHAR(5),
	id CHAR(10) DEFAULT "instructor");

INSERT INTO instructor (name,code)
VALUES ('Jonny', 'sc');
INSERT INTO instructor VALUES('Scott', 'dc','i2'),
       ('Edison', 'me', 'i4');

