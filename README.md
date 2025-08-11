# SQL Practice & Progress Tracker

This repository showcases my progress in mastering SQL over the past month.  It collects solutions to a variety of practice problems – many inspired by the *LeetCode Top 50 SQL* set – and organises them by topic.  Each query is saved as a separate `.sql` file with a descriptive header explaining the problem and approach.  A progress tracker at the root summarises the exercises, topics and difficulty levels.

## Repository structure

```
sql_practice/
├── basics/                 # simple select, filtering and fundamental operations
│   ├── combine_two_tables.sql
│   ├── customers_who_never_order.sql
│   └── big_countries.sql
├── aggregations/           # group by, aggregation and having
│   ├── department_average_salary.sql
│   ├── department_age_gap.sql
│   └── department_all_above_threshold.sql
├── joins_subqueries/       # joins, subqueries and correlated queries
│   ├── department_highest_salary.sql
│   ├── department_top_two_salaries.sql
│   ├── employees_above_average_salary.sql
│   ├── employees_lowest_salary.sql
│   └── employees_joined_after_average_date.sql
├── window_functions/       # ranking, running totals and pattern detection
│   ├── running_total_department.sql
│   ├── top_two_earnings_per_department.sql
│   ├── consecutive_numbers.sql
│   └── department_rank.sql
├── date_time/              # working with dates and times
│   └── employees_joined_after_average_date.sql
├── comprehensive/          # summary of the LeetCode Top 50 SQL problems
│   └── top_50_overview.md
└── progress_tracker.md     # overview of problems solved, topics and difficulty
```

## How to use

* Browse the topic directories for individual SQL files.  Each file contains a problem description and a solution.
* The **progress_tracker.md** file at the root gives a consolidated view of what has been tackled and the difficulty level for each topic.
* These solutions use standard ANSI SQL, with dialect notes where relevant (e.g., MySQL 8+ for window functions).  They are meant to be illustrative and may require adjustment for your specific schema or database engine.

## LeetCode Top 50 SQL

The *comprehensive* directory contains a brief summary of the Top 50 SQL problems from LeetCode.  While the exact solutions from my LeetCode submissions are not reproduced here due to platform restrictions, the problems solved in this repository cover the same core concepts: basic selects, joins, filtering, aggregations, subqueries, window functions and date/time operations.  Together these exercises represent a thorough review of SQL fundamentals and intermediate techniques.

## Licence

This repository is for educational purposes only.
