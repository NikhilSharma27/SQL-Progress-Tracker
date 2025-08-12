/*
Problem: Running Salary Total Per Department

Table:
  Employees(employee_id, department, name, salary, join_date)

Calculate a running (cumulative) total of salaries for each department when sorted by the employee's join date.  The running total should include the current employee's salary and all previous salaries in the same department, ordered by `join_date`.

Approach:
  Use the `SUM()` window function with `PARTITION BY department` and `ORDER BY join_date` to accumulate salaries.  The frame specification `ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW` ensures that the sum includes all prior rows in the partition up to the current row.
*/

SELECT
    department,
    name,
    join_date,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
        ORDER BY join_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_salary
FROM
    Employees
ORDER BY
    department,
    join_date;
