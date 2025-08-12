/*
Problem: Employees Earning Above Their Department's Average Salary

Table:
  Employees(employee_id, department, name, salary)

List the name, department and salary of employees who earn more than the average salary of their department.

Approach:
  There are two common methods:
  1. Use a correlated subquery: for each employee, compare their salary to the average salary of the employees in their department.
  2. Precompute the average salary per department in a Common Table Expression (CTE) or derived table and join it back to the `Employees` table, then filter for salaries above the precomputed average.
*/

-- Method 1: Correlated subquery
SELECT
    e.name,
    e.department,
    e.salary
FROM
    Employees AS e
WHERE
    e.salary > (
        SELECT
            AVG(salary)
        FROM
            Employees AS sub
        WHERE
            sub.department = e.department
    );

-- Method 2: Join with an aggregated table
WITH dept_avg AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM
        Employees
    GROUP BY
        department
)
SELECT
    e.name,
    e.department,
    e.salary
FROM
    Employees AS e
JOIN
    dept_avg AS d ON e.department = d.department
WHERE
    e.salary > d.avg_salary;
