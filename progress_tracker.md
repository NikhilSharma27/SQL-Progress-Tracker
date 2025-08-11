# SQL Progress Tracker

This markdown file summarises the SQL exercises completed as part of my data‑engineering journey.  Problems are grouped by topic and difficulty.  Where relevant, a reference to the corresponding `.sql` file is provided.  The descriptions are kept concise; please refer to the SQL files themselves for full problem statements and solutions.

| Topic                       | File(s)                                    | Description                               | Difficulty |
|-----------------------------|--------------------------------------------|-------------------------------------------|------------|
| **Basics & Filtering**      | `basics/combine_two_tables.sql`           | Join two tables, return combined records | Easy       |
|                             | `basics/customers_who_never_order.sql`    | Find customers with no matching orders   | Easy       |
|                             | `basics/big_countries.sql`                | Filter countries by size & population    | Easy       |
| **Aggregations & Grouping** | `aggregations/department_average_salary.sql` | Departments with high average salary     | Medium     |
|                             | `aggregations/department_age_gap.sql`     | Age gap (max–min) per department         | Medium     |
|                             | `aggregations/department_all_above_threshold.sql` | Departments where min salary > threshold | Medium     |
| **Joins & Subqueries**      | `joins_subqueries/department_highest_salary.sql` | Highest salary & employee per department | Medium     |
|                             | `joins_subqueries/department_top_two_salaries.sql` | Top 2 earners per department            | Medium     |
|                             | `joins_subqueries/employees_above_average_salary.sql` | Employees earning above dept average  | Medium     |
|                             | `joins_subqueries/employees_lowest_salary.sql` | Lowest paid employees per department     | Medium     |
|                             | `joins_subqueries/employees_joined_after_average_date.sql` | Joined after department average date | Medium     |
| **Window Functions**        | `window_functions/running_total_department.sql` | Running salary total per department      | Hard       |
|                             | `window_functions/top_two_earnings_per_department.sql` | Top 2 earners using window functions    | Hard       |
|                             | `window_functions/consecutive_numbers.sql` | Detect numbers repeated three times      | Hard       |
|                             | `window_functions/department_rank.sql`    | Rank employees by salary within dept     | Medium     |
| **Date & Time Functions**   | `date_time/employees_joined_after_average_date.sql` | Compare join dates to department average | Medium     |
| **Comprehensive**           | `comprehensive/top_50_overview.md`         | Summary of Top 50 LeetCode SQL topics    | Mixed      |

For a deeper explanation of each problem and approach, open the corresponding `.sql` file.  This tracker will expand as more exercises and projects are added.
