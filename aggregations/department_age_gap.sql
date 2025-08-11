/*
Problem: Departments With Large Age Gap

Table:
  Employees(employee_id, department, age)

Return the departments for which the difference between the oldest and youngest employee is at least 10 years.  Compute the age gap as `MAX(age) - MIN(age)`.

Approach:
  Group by `department` and calculate the difference between `MAX(age)` and `MIN(age)`.  Use `HAVING` to filter departments where this gap meets or exceeds the threshold.
*/

SELECT
    department,
    MAX(age) - MIN(age) AS age_gap
FROM
    Employees
GROUP BY
    department
HAVING
    (MAX(age) - MIN(age)) >= 10;
