CREATE DATABASE CLASS2;

USE CLASS2;

CREATE TABLE EXAMPLE1(
	SAMPLE CHAR(4)
);

-- INSERT INTO EXAMPLE1 VALUES ("AB");

SELECT * FROM EXAMPLE1;

CREATE TABLE EXAMPLE2(
	SAMPLE1 CHAR(5),
    SAMPLE2 CHAR(7),
    SAMPLE3 CHAR(10)
);

INSERT INTO EXAMPLE2 VALUES ('ABC','ABCDEF','ABCD');

CREATE TABLE EXAMPLE3(
	COL1 VARCHAR(10)
);
INSERT INTO EXAMPLE3 VALUES ("HELLO");
INSERT INTO EXAMPLE3 VALUES (123);
INSERT INTO EXAMPLE3 VALUES ("ASDFGJKLKLK");

SELECT * FROM EXAMPLE3;

CREATE TABLE EXAMPLE4(
	COL1 VARCHAR(10),
    COL2 CHAR(4)
);


CREATE TABLE EXAMPLE5(
	COL1 TEXT
);
INSERT INTO EXAMPLE5 VALUES ("");

SELECT * FROM EXAMPLE5;

CREATE TABLE EXAMPLE6(
	COL1 TEXT,
    COL2 TEXT,
    COL3 VARCHAR(40)
);

CREATE TABLE EXMAPLE7(
	COL1 TINYTEXT
);
INSERT INTO EXMAPLE7 VALUES ("ASDFGHJKJHGFDSGFDFGHJKJHGFDSDFGHJKJHGFDXGHJKJHGFDSDKJHGFCDFGHJKJHGFDFGIUGFGHIJGFCVGHIUGFVGHJIGFCVHIKJHGFCVHIUGFCVBJHGVCVHJIJHGFCVHIGCVHJJGFCXVGHUYTFDCVHIUGFKJDSDFKJUYTFDFGHKGFD");
CREATE TABLE EXMAPLE8(
	COL1 MEDIUMTEXT
);
INSERT INTO EXMAPLE8 VALUES ("HELLO CODEGNAN");
CREATE TABLE EXMAPLE9(
	COL1 LONGTEXT
);
INSERT INTO EXMAPLE9 VALUES ("HELLO OJ");

CREATE TABLE EXAMPLE10(
	COL1 TINYTEXT,
    COL2 MEDIUMTEXT,
    COL3 LONGTEXT
);
