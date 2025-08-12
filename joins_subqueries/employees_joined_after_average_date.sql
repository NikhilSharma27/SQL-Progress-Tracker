/*
Problem: Employees Joined After Department Average Date

Table:
  Employees(employee_id, name, department, join_date)

Find the employees who joined after the average `join_date` of their department.  The average join date represents the arithmetic mean of the dates for all employees in a department.

Approach:
  1. Use a Common Table Expression (CTE) to compute the average `join_date` for each department.  In many SQL dialects, dates can be averaged directly; if not, convert them to numeric values (e.g. UNIX timestamps) before averaging.
  2. Join the original table with this CTE on the department and filter for employees whose `join_date` is greater than the computed average.
*/

WITH dept_avg AS (
    SELECT
        department,
        AVG(CAST(join_date AS DATE)) AS avg_join_date
    FROM
        Employees
    GROUP BY
        department
)
SELECT
    e.name,
    e.department,
    e.join_date
FROM
    Employees AS e
JOIN
    dept_avg AS d ON e.department = d.department
WHERE
    e.join_date > d.avg_join_date;
