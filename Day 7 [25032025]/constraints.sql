CREATE DATABASE HELLO5;

USE HELLO5;

-- PRIMARY KEY

CREATE TABLE HELLO1(
	ID INT PRIMARY KEY,
    NAME VARCHAR(10)
);
INSERT INTO HELLO1 VALUES (101,"USER1");
INSERT INTO HELLO1 VALUES (102,"USER2");
INSERT INTO HELLO1 VALUES (103,"USER1");
INSERT INTO HELLO1 VALUES (101,"USER1");

INSERT INTO HELLO1 (ID) VALUES (104);
INSERT INTO HELLO1 (NAME) VALUES ("USER6");

SELECT * FROM HELLO1;

CREATE TABLE HELLO21(
	COL11 INT PRIMARY KEY,
    COL12 INT
);
INSERT INTO HELLO21 VALUES (101,1);
INSERT INTO HELLO21 VALUES (102,1);
INSERT INTO HELLO21 VALUES (103,1);
SELECT * FROM HELLO21;
CREATE TABLE HELLO2(
	COL1 INT,
    COL2 INT,
    COL3 INT,
    FOREIGN KEY (COL2) REFERENCES HELLO21(COL11)
);
INSERT INTO HELLO2 VALUES (10,101,1);
INSERT INTO HELLO2 VALUES (10,102,1);
INSERT INTO HELLO2 VALUES (10,103,1);
INSERT INTO HELLO2 VALUES (10,104,1);



CREATE TABLE HELLO5(
	COL1 INT UNIQUE,
    COL2 INT
);
INSERT INTO HELLO5 VALUES (101,1);
INSERT INTO HELLO5 VALUES (102,1);
INSERT INTO HELLO5 VALUES (103,1);
INSERT INTO HELLO5 VALUES (101,1);
INSERT INTO HELLO5 (COL2) VALUES (2);
SELECT * FROM HELLO5;


CREATE TABLE HELLO6(
	COL1 INT NOT NULL,
    COL2 INT
);
INSERT INTO HELLO6 VALUES (101,1);
INSERT INTO HELLO6 VALUES (102,2);
INSERT INTO HELLO6 VALUES (101,1);
INSERT INTO HELLO6 (COL1) VALUES (103);
INSERT INTO HELLO6 (COL2) VALUES (5);
SELECT * FROM HELLO6;


CREATE TABLE HELLO7(
	COL1 INT,
    COL2 INT CHECK (COL2 > 50)
);
INSERT INTO HELLO7 VALUES (101,100);
INSERT INTO HELLO7 VALUES (101,45);

CREATE TABLE HELLO8(
	COL1 INT,
    COL2 INT DEFAULT 10
);
INSERT INTO HELLO8 VALUES (101,100);
INSERT INTO HELLO8 VALUES (201,200);
SELECT * FROM HELLO8;
INSERT INTO HELLO8 (COL1) VALUES (300);

