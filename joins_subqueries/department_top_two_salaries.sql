/*
Problem: Top Two Salaries Per Department

Table:
  Employees(employee_id, department, name, salary)

Return the top two highest-paid employees in each department.  Include ties so that if multiple employees share the same salary for a rank, they are all included.  The output should list the department, employee name and salary.

Approach:
  Use the `DENSE_RANK()` window function partitioned by `department` and ordered by `salary` descending.  Assign a rank to each employee within their department.  Filter the result to include only those rows with rank less than or equal to 2.
*/

WITH ranked AS (
    SELECT
        department,
        name,
        salary,
        DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rk
    FROM
        Employees
)
SELECT
    department,
    name,
    salary
FROM
    ranked
WHERE
    rk <= 2
ORDER BY
    department,
    rk,
    name;
