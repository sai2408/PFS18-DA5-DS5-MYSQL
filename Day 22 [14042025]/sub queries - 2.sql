CREATE DATABASE HELLO22;

USE HELLO22;

CREATE TABLE EMPLOYEES(
	EMP_ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(30),
    DEPARTMENT VARCHAR(20),
    SALARY INT,
    AGE INT,
    CITY VARCHAR(10)
);
INSERT INTO employees (emp_id, name, department, salary, age, city) VALUES
(1, 'Alice',   'HR',        40000, 28, 'Delhi'),
(2, 'Bob',     'IT',        60000, 32, 'Mumbai'),
(3, 'Charlie', 'Finance',   55000, 29, 'Bangalore'),
(4, 'Diana',   'IT',        62000, 35, 'Mumbai'),
(5, 'Eve',     'HR',        42000, 26, 'Chennai'),
(6, 'Frank',   'Finance',   53000, 31, 'Delhi'),
(7, 'Grace',   'IT',        58000, 30, 'Hyderabad');

SELECT * FROM EMPLOYEES;

-- IN
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT IN 
			(SELECT DEPARTMENT FROM EMPLOYEES
					WHERE CITY = "DELHI");
                    
SELECT * FROM EMPLOYEES
WHERE SALARY IN (SELECT SALARY FROM EMPLOYEES 
					WHERE DEPARTMENT = "HR");