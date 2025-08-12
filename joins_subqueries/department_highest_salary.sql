/*

Problem: Department Highest Salary (LeetCode 184)



Tables:

  Employee(Id, Name, Salary, DepartmentId)

  Department(Id, Name)



For each department, report the name of the department, the name of the employee(s) with the highest salary in that department and the salary amount.  If multiple employees share the same highest salary, report them all.



Approach:

  1. Join the `Employee` table with the `Department` table on the department id.

  2. Compute the maximum salary per department using a subquery and filter the joined rows where the employee's salary equals that maximum.

  3. Alternatively, use a window function such as `RANK()` or `DENSE_RANK()` over each department to identify the top earners.

*/



-- Solution using a correlated subquery (works in most SQL dialects):

SELECT

    d.Name AS department,

    e.Name AS employee,

    e.Salary

FROM

    Employee AS e

JOIN

    Department AS d ON e.DepartmentId = d.Id

WHERE

    e.Salary = (

        SELECT

            MAX(Salary)

        FROM

            Employee AS sub

        WHERE

            sub.DepartmentId = e.DepartmentId

    );



-- Alternative solution using window functions (requires support for analytic functions):

/*

WITH ranked AS (

    SELECT

        d.Name AS department,

        e.Name AS employee,

        e.Salary,

        RANK() OVER (PARTITION BY e.DepartmentId ORDER BY e.Salary DESC) AS rk

    FROM

        Employee AS e

    JOIN

        Department AS d ON e.DepartmentId = d.Id

)

SELECT

    department,

    employee,

    Salary

FROM

    ranked

WHERE

    rk = 1;

*/
