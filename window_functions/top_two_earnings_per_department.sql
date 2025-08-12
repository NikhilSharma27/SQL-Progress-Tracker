/*
Problem: Top Two Earnings per Department (Window Function)

Table:
  Employees(employee_id, department, name, salary)

Return the top two salary values and the corresponding employees for each department using window functions.  Include ties where more than two employees share the same top salary or second top salary.

Approach:
  Use `DENSE_RANK()` to rank employees within each department by salary descending.  Filter for ranks less than or equal to 2.  This solution is similar to the `department_top_two_salaries.sql` script but placed here in the `window_functions` directory to highlight the analytic function usage.
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
