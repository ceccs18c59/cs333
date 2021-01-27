--   Name: Thejus R
--   Reg no: CHN18CS118
--   Class: S5-C
--   Roll no: 59

USE cs333;
CREATE TABLE EMPLOYEE (
    CODE VARCHAR(10),
    NAME CHAR(50),
    DOB DATE NOT NULL,
    DESIGNATION CHAR(50),
    SALARY INT
);

INSERT INTO EMPLOYEE VALUES ('E01', 'Peter', '1985-09-26', 'CEO', '150000');
INSERT INTO EMPLOYEE VALUES ('E02', 'Andrew', '1986-11-10', 'CTO', '100000');
INSERT INTO EMPLOYEE VALUES ('E03', 'Chris', '1992-02-16', 'Sales Manager', '80000');
INSERT INTO EMPLOYEE VALUES ('E04', 'Daniel', '1987-04-21', 'Clerk', '40000');
INSERT INTO EMPLOYEE VALUES ('E05', 'Ethan', '1991-07-10', 'Clerk', '40000');

DELIMITER $$
CREATE TRIGGER INSERT_PREVENT
BEFORE INSERT
ON EMPLOYEE FOR EACH ROW
BEGIN
IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NO CHANGES TO EMPLOYEE TABLE';
END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER UPDATE_PREVENT
BEFORE UPDATE
ON EMPLOYEE FOR EACH ROW
BEGIN
IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NO CHANGES TO EMPLOYEE TABLE';
END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER DELETE_PREVENT
BEFORE DELETE
ON EMPLOYEE FOR EACH ROW
BEGIN
IF (CURRENT_TIME() BETWEEN '17:00' AND '00:00' ) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NO CHANGES TO EMPLOYEE TABLE';
END IF;
END $$
DELIMITER ;