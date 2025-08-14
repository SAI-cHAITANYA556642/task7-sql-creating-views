# Task 7: Creating Views

## Objective
>>This project shows how to create and use "SQL Views" for data abstraction, reusability, and security using  ""MySQL"".<br>

## Tools Used
>>MySQL Workbench<br>
##Version Control System
>>git<br>

## Key Concepts
- Creating views with "CREATE VIEW" <br>
- Using complex "SELECT" queries in views <br>
- Filtering and securing data through views <br>
- Using "WITH CHECK OPTION" <br>
- Dropping views <br>
- Understanding the limitations of views. <br>


## Contents
- SQL Scripts: Examples of view creation and usage <br>
- Screenshots:Outputs from running queries in SQLite/MySQL <br>
- README:This file, which explains the task <br>

## Example Queries

### 1. Create a Simple View 
""sql"" <br>
CREATE VIEW it_employees AS <br>
SELECT emp_id, emp_name, salary <br>
FROM employees <br>
WHERE department = 'IT';  <br>