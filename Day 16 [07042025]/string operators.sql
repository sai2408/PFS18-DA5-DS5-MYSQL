CREATE DATABASE HELLO16;
USE HELLO16;

SELECT CONCAT("HELLO","WORLD");
SELECT CONCAT("HELLO","WORLD") AS HEADING;
SELECT CONCAT("HELLO"," ","WORLD") AS HEADING;
SELECT CONCAT("HELLO ","WORLD") AS HEADING;
SELECT CONCAT("A","_","B","_","C","_","D");
SELECT CONCAT("A","_","B","_","C","_","D") AS COL1;

SELECT CONCAT_WS("","HELLO","WORLD");
SELECT CONCAT_WS("","HELLO","WORLD") AS HEADING;
SELECT CONCAT_WS(" ","HELLO","WORLD") AS HEADING;
SELECT CONCAT_WS("_","A","B","C","D");
SELECT CONCAT_WS("_","A","B","C","D") AS COL1;


SELECT LOWER("STRing");
SELECT LOWER("String") as lower1;
SELECT UPPER("String");
SELECT UPPER("String") as upper1;

SELECT LENGTH("HELLO");
SELECT LENGTH("HELLO") AS COL1;
SELECT CHAR_LENGTH("HELLO");
SELECT CHAR_LENGTH("HELLO") AS COL2;

SELECT LENGTH("HELLO\nABC") AS TEST;
SELECT CHAR_LENGTH("HELLO\nABC") AS TEST;

SELECT SUBSTRING("ABCDEFGHIJK",2,5);
SELECT SUBSTRING("HELLOWORLD",2,4) AS COL1; 

SELECT REVERSE("HELLO");
SELECT REVERSE("HELLO") AS REVCOL;

SELECT REPLACE("ABCXYZABC","XYZ","$");
SELECT REPLACE("ABCXYZABC","XYZ","$") AS COLE;


