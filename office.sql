create  database office ;
use office;

-- Create Employees table
create table employees (
emp_id int primary key,
emp_name varchar(50),
department varchar(50),
salary int 
);

-- Insert sample employees
INSERT INTO employees VALUES
(1, 'Alice', 'IT', 70000),
(2, 'Bob', 'HR', 50000),
(3, 'Charlie', 'Finance', 60000),
(4, 'David', 'IT', 80000),
(5, 'Eva', 'Finance', 55000);

-- Create Departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name varchar(50)
);
-- Insert sample departments
INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

select * from employees;

-- view is the two types
-- 1) simple view
-- 2) complex view

-- Create a Simple View 
-- View: IT department employees  

CREATE VIEW it_employees AS
SELECT emp_id, emp_name, salary
FROM employees
WHERE department = 'IT';

SELECT * FROM it_employees;

CREATE VIEW hr_employees AS
SELECT emp_id, emp_name, salary
FROM employees
WHERE department = 'HR';

SELECT * FROM hr_employees;


-- Create a Complex View [Join Example]
-- View: Employee details with department name

CREATE VIEW employee_department AS
SELECT e.emp_id, e.emp_name, e.salary, d.dept_name
FROM employees e
JOIN departments d ON e.department = d.dept_name;

SELECT * FROM employee_department;

-- Create a View with Security Check
-- View: Only high-salary employees

CREATE VIEW high_salary_employees AS
SELECT *
FROM employees
WHERE salary > 60000
WITH CHECK OPTION;

DROP VIEW it_employees;
















