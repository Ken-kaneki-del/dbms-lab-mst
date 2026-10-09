-- Question 5: Online Shopping Management System
-- A. Theory:
-- Explain how INSERT, UPDATE, and DELETE commands are used to modify records in SQL. Explain how GROUP BY is used with aggregate functions such as COUNT(), SUM(), and AVG() to summarize data. Also explain how HAVING differs from WHERE when filtering query results.
-- B. Practical:
-- Create an Online Shopping Management System using Customer and Orders tables.
-- 1. Create both tables with suitable attributes and apply Primary Key and Foreign Key constraints.
-- 2. Apply suitable NOT NULL, UNIQUE, DEFAULT, and CHECK constraints.
-- 3. Insert at least 5 customer records and 5 order records.
-- 4. Display orders whose total amount is greater than ₹5,000.
-- 5. Calculate the total order amount for each customer using GROUP BY and SUM().
-- 6. Display customers whose total order amount exceeds ₹10,000 using HAVING.
-- 7. Find the average order amount using AVG().
-- 8. Update the status of a particular order.
-- 9. Delete an order based on a suitable condition.
-- 10. Add a new column to the Orders table using ALTER.
-- 11. Display the final order records.

-- Question 6: Hospital Staff and Department Management System
-- A. Theory:
-- Explain the purpose of DISTINCT, LIKE, IN, and BETWEEN in SQL. Describe how these operators are used with the WHERE clause. Also explain the difference between COUNT(*) and COUNT(column_name), and describe how column aliases are used to make query results easier to understand.
-- B. Practical:
-- Create a Hospital Staff Management System using Department and Staff tables.
-- 1. Create both tables with suitable attributes and establish a Primary Key and Foreign Key relationship.
-- 2. Apply appropriate NOT NULL, UNIQUE, DEFAULT, and CHECK constraints.
-- 3. Insert at least 4 department records and 6 staff records.
-- 4. Display staff members whose salaries fall between ₹25,000 and ₹50,000.
-- 5. Display staff members whose names start with a specified letter using LIKE.
-- 6. Display staff members belonging to selected departments using IN.
-- 7. Display unique staff designations using DISTINCT.
-- 8. Count the number of staff members in each department using GROUP BY and COUNT().
-- 9. Display the maximum and minimum salary using MAX() and MIN().
-- 10. Update the salary of a staff member.
-- 11. Display the final staff records using SELECT with appropriate column aliases.

CREATE DATABASE Hospital;
USE Hospital;
CREATE TABLE Staff(
emp_id INT PRIMARY KEY NOT NULL,
emp_name VARCHAR(50) ,
salary INT DEFAULT 50000,
dept_name VARCHAR(50)
);

INSERT INTO Staff VALUES
(1,'Aryan',21000,'CS'),
(2,'Shivam',40000,'Medical'),
(3,'Raj',30000,'Finance'),
(4,'Anjali',35000,'CS'),
(5,'Divya',45000,'Finance'),
(6,'Ansh',46000,'Medical');

SELECT emp_name,salary FROM Staff 
WHERE salary BETWEEN 25000 AND 50000;

SELECT emp_name FROM Staff
WHERE emp_name LIKE 'A%';

SELECT emp_name,dept_name FROM Staff
WHERE dept_name IN ('CS','Finance');

SELECT DISTINCT dept_name FROM Staff;

SELECT dept_name,COUNT(dept_name) FROM Staff
GROUP BY dept_name;

SELECT MAX(salary),MIN(salary) FROM Staff;

SET SQL_SAFE_UPDATES = 0;

UPDATE Staff
SET salary = 50000
WHERE emp_name = 'Anjali';

SELECT emp_name AS en,dept_name AS d,salary AS s FROM Staff;






