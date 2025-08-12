/*
Problem: Lowest Paid Employees Per Department

Table:
  Employees(employee_id, department, name, salary)

Return each department and the employee(s) who earn the lowest salary in that department.  If more than one employee has the same lowest salary in a department, include them all.

Approach:
  Two equivalent approaches are provided:
  1. Compute the minimum salary per department in a Common Table Expression (CTE) and join it back to the `Employees` table to select only the rows where the employee's salary equals the minimum.
  2. Use the `RANK()` window function partitioned by department and ordered by salary ascending; filter for rows where the rank is 1.
*/

-- Approach 1: Join with aggregated minimum salary
WITH dept_min AS (
    SELECT
        department,
        MIN(salary) AS min_salary
    FROM
        Employees
    GROUP BY
        department
)
SELECT
    e.department,
    e.name,
    e.salary
FROM
    Employees AS e
JOIN
    dept_min AS dm ON e.department = dm.department AND e.salary = dm.min_salary
ORDER BY
    e.department,
    e.name;

-- Approach 2: Using window function
/*
WITH ranked AS (
    SELECT
        department,
        name,
        salary,
        RANK() OVER (PARTITION BY department ORDER BY salary ASC) AS rk
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
    rk = 1
ORDER BY
    department,
    name;
*/
