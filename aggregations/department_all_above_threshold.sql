/*
Problem: Departments Where All Employees Earn Above a Threshold

Table:
  Employees(employee_id, department, salary)

Find all departments where **every** employee earns more than 50 000.  If any employee earns 50 000 or less, that department should not appear in the result.

Approach:
  Group by `department`, compute the minimum salary with `MIN(salary)` and use `HAVING` to check if the minimum exceeds 50 000.
*/

SELECT
    department
FROM
    Employees
GROUP BY
    department
HAVING
    MIN(salary) > 50000;
