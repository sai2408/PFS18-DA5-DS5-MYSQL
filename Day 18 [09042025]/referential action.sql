CREATE DATABASE HELLO18;

USE HELLO18;

CREATE TABLE CUSTOMERS(
	CID INT PRIMARY KEY AUTO_INCREMENT,
    CNAME VARCHAR(30),
    CEMAIL VARCHAR(50)
);
CREATE TABLE ORDERS(
	OID INT PRIMARY KEY AUTO_INCREMENT,
    CID INT,
    FOREIGN KEY (CID) REFERENCES CUSTOMERS(CID)
);
INSERT INTO CUSTOMERS VALUES (101,"A","A@GMAIL.COM");
INSERT INTO CUSTOMERS VALUES (102,"B","B@GMAIL.COM");
INSERT INTO CUSTOMERS VALUES (103,"C","C@GMAIL.COM");
INSERT INTO CUSTOMERS VALUES (104,"D","D@GMAIL.COM");
SELECT * FROM CUSTOMERS;

INSERT INTO ORDERS VALUES (1001,101);
INSERT INTO ORDERS VALUES (1002,101);
INSERT INTO ORDERS VALUES (1003,102);
INSERT INTO ORDERS VALUES (1004,103);

SELECT * FROM ORDERS;

DELETE FROM CUSTOMERS WHERE CID = 104;
SELECT * FROM CUSTOMERS;

DELETE FROM CUSTOMERS WHERE CID = 102;



-- CASCADE

CREATE TABLE CUSTOMERS1(
	CID INT PRIMARY KEY AUTO_INCREMENT,
    CNAME VARCHAR(30),
    CEMAIL VARCHAR(50)
);
CREATE TABLE ORDERS1(
	OID INT PRIMARY KEY AUTO_INCREMENT,
    CID INT,
    FOREIGN KEY (CID) REFERENCES CUSTOMERS1(CID) ON DELETE CASCADE
);
INSERT INTO CUSTOMERS1 VALUES (101,"A","A@GMAIL.COM");
INSERT INTO CUSTOMERS1 VALUES (102,"B","B@GMAIL.COM");
INSERT INTO CUSTOMERS1 VALUES (103,"C","C@GMAIL.COM");
INSERT INTO CUSTOMERS1 VALUES (104,"D","D@GMAIL.COM");

INSERT INTO ORDERS1 VALUES (1001,101);
INSERT INTO ORDERS1 VALUES (1002,101);
INSERT INTO ORDERS1 VALUES (1003,102);
INSERT INTO ORDERS1 VALUES (1004,103);

SELECT * FROM CUSTOMERS1;

SELECT * FROM ORDERS1;

DELETE FROM CUSTOMERS1 WHERE CID = 104;

DELETE FROM CUSTOMERS1 WHERE CID = 101;
SELECT * FROM CUSTOMERS1;
SELECT * FROM ORDERS1;

SET SQL_SAFE_UPDATES = 0;
UPDATE CUSTOMERS1 SET CID = 202 WHERE CNAME = "B";

-- CASCADE ON UPDATE
CREATE TABLE CUSTOMERS2(
	CID INT PRIMARY KEY AUTO_INCREMENT,
    CNAME VARCHAR(30),
    CEMAIL VARCHAR(50)
);
CREATE TABLE ORDERS2(
	OID INT PRIMARY KEY AUTO_INCREMENT,
    CID INT,
    FOREIGN KEY (CID) REFERENCES CUSTOMERS2(CID) ON UPDATE CASCADE
);
INSERT INTO CUSTOMERS2 VALUES (101,"A","A@GMAIL.COM");
INSERT INTO CUSTOMERS2 VALUES (102,"B","B@GMAIL.COM");
INSERT INTO CUSTOMERS2 VALUES (103,"C","C@GMAIL.COM");
INSERT INTO CUSTOMERS2 VALUES (104,"D","D@GMAIL.COM");

INSERT INTO ORDERS2 VALUES (1001,101);
INSERT INTO ORDERS2 VALUES (1002,101);
INSERT INTO ORDERS2 VALUES (1003,102);
INSERT INTO ORDERS2 VALUES (1004,103);

SELECT * FROM CUSTOMERS2;

SELECT * FROM ORDERS2;

DELETE FROM CUSTOMERS2 WHERE CID = 104;

DELETE FROM CUSTOMERS2 WHERE CID = 101;
SELECT * FROM CUSTOMERS2;
SELECT * FROM ORDERS2;
UPDATE CUSTOMERS2 SET CID = 202 WHERE CNAME = "B";

-- SET NULL
CREATE TABLE CUSTOMERS3(
	CID INT PRIMARY KEY AUTO_INCREMENT,
    CNAME VARCHAR(30),
    CEMAIL VARCHAR(50)
);
CREATE TABLE ORDERS3(
	OID INT PRIMARY KEY AUTO_INCREMENT,
    CID INT,
    FOREIGN KEY (CID) REFERENCES CUSTOMERS3(CID) ON DELETE SET NULL ON UPDATE SET NULL
);
INSERT INTO CUSTOMERS3 VALUES (101,"A","A@GMAIL.COM");
INSERT INTO CUSTOMERS3 VALUES (102,"B","B@GMAIL.COM");
INSERT INTO CUSTOMERS3 VALUES (103,"C","C@GMAIL.COM");
INSERT INTO CUSTOMERS3 VALUES (104,"D","D@GMAIL.COM");

INSERT INTO ORDERS3 VALUES (1001,101);
INSERT INTO ORDERS3 VALUES (1002,101);
INSERT INTO ORDERS3 VALUES (1003,102);
INSERT INTO ORDERS3 VALUES (1004,103);

SELECT * FROM CUSTOMERS3;

SELECT * FROM ORDERS3;

DELETE FROM CUSTOMERS3 WHERE CID = 101;
SELECT * FROM CUSTOMERS3;
SELECT * FROM ORDERS3;

UPDATE CUSTOMERS3 SET CID = 202 WHERE CNAME = "B";
SELECT * FROM CUSTOMERS3;
SELECT * FROM ORDERS3;

-- RESTRICE

CREATE TABLE CUSTOMERS4(
	CID INT PRIMARY KEY AUTO_INCREMENT,
    CNAME VARCHAR(30),
    CEMAIL VARCHAR(50)
);
CREATE TABLE ORDERS4(
	OID INT PRIMARY KEY AUTO_INCREMENT,
    CID INT,
    FOREIGN KEY (CID) REFERENCES CUSTOMERS4(CID) ON DELETE RESTRICT ON UPDATE RESTRICT
);
INSERT INTO CUSTOMERS4 VALUES (101,"A","A@GMAIL.COM");
INSERT INTO CUSTOMERS4 VALUES (102,"B","B@GMAIL.COM");
INSERT INTO CUSTOMERS4 VALUES (103,"C","C@GMAIL.COM");
INSERT INTO CUSTOMERS4 VALUES (104,"D","D@GMAIL.COM");

INSERT INTO ORDERS4 VALUES (1001,101);
INSERT INTO ORDERS4 VALUES (1002,101);
INSERT INTO ORDERS4 VALUES (1003,102);
INSERT INTO ORDERS4 VALUES (1004,103);

SELECT * FROM CUSTOMERS4;

SELECT * FROM ORDERS4;

DELETE FROM CUSTOMERS4 WHERE CID = 101;
UPDATE CUSTOMERS4 SET CID = 202 WHERE CNAME = "B";


