CREATE DATABASE HELLO7;

USE HELLO7;

CREATE TABLE HELLO1(
	COL1 INT PRIMARY KEY,
    COL2 VARCHAR(100)
);
INSERT INTO HELLO1 VALUES (101,"U1");
INSERT INTO HELLO1 VALUES (102,"U2");
INSERT INTO HELLO1 VALUES (103,"U3");
SELECT * FROM HELLO1;
ALTER TABLE HELLO1 ADD COL3 INT;
SELECT * FROM HELLO1;
INSERT INTO HELLO1 VALUES (104,"U4",1000);
SELECT * FROM HELLO1;
ALTER TABLE HELLO1 ADD (COL4 VARCHAR(10),COL5 FLOAT,COL6 DECIMAL(10,3));
ALTER TABLE HELLO1 ADD (
	COL7 INT,
    COL8 VARCHAR(100)
);
SELECT * FROM HELLO1;

ALTER TABLE HELLO1 DROP COLUMN COL6;
SELECT * FROM HELLO1;
ALTER TABLE HELLO1 
DROP COLUMN COL3;
SELECT * FROM HELLO1;

ALTER TABLE HELLO1 MODIFY COLUMN COL8 INT;
INSERT INTO HELLO1 (COL1,COL4) VALUES (1001,"HELLO");
ALTER TABLE HELLO1 MODIFY COLUMN COL4 INT;
ALTER TABLE HELLO1 MODIFY COLUMN COL4 VARCHAR(500);
ALTER TABLE HELLO1 MODIFY COLUMN COL5 VARCHAR(10);

ALTER TABLE HELLO1 CHANGE COLUMN COL5 COL15 VARCHAR(100);
SELECT * FROM HELLO1;
ALTER TABLE HELLO1 CHANGE COLUMN COL2 COL12 VARCHAR(10);
SELECT * FROM HELLO1;


CREATE TABLE HELLO2(
	COL1 INT,
    COL2 VARCHAR(10)
);
ALTER TABLE HELLO2 ADD CONSTRAINT PRIMARY KEY (COL1);
SELECT * FROM HELLO2;
CREATE TABLE HELLO3(
	COL1 INT,
    COL2 VARCHAR(10)
);
INSERT INTO HELLO3 VALUES (101,"ABC");
INSERT INTO HELLO3 VALUES (101,"XYZ");
SELECT * FROM HELLO3;
ALTER TABLE HELLO3 ADD CONSTRAINT PRIMARY KEY (COL1);
ALTER TABLE HELLO3 ADD CONSTRAINT UNIQUE (COL2);


CREATE TABLE HELLO4(
	COL1 INT,
    COL2 VARCHAR(10)
);
ALTER TABLE HELLO4 MODIFY COLUMN COL1 INT NOT NULL;
ALTER TABLE HELLO4 MODIFY COLUMN COL2 VARCHAR(10) DEFAULT "HELLO";

ALTER TABLE HELLO3 DROP CONSTRAINT COL2 ;


CREATE TABLE HELLO5(
	COL1 INT PRIMARY KEY,
    COL2 VARCHAR(10) NOT NULL
);
DESCRIBE HELLO5;
ALTER TABLE HELLO5 DROP PRIMARY KEY;
ALTER TABLE HELLO5 MODIFY COLUMN COL2 VARCHAR(10) NULL;