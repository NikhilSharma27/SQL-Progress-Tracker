/*
Problem: Departments with Average Salary Above a Threshold

Table:
  Employees(employee_id, department, salary)

Identify departments whose **average salary** exceeds a particular threshold (for example 60 000).  The threshold can be adjusted as needed.

Approach:
  Group the `Employees` table by `department` and calculate the average salary with `AVG(salary)`.  Use a `HAVING` clause to filter for departments where the average exceeds the given threshold.
*/

SELECT
    department,
    AVG(salary) AS avg_salary
FROM
    Employees
GROUP BY
    department
HAVING
    AVG(salary) > 60000;
