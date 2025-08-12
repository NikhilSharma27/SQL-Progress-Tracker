-- Problem: Consecutive Numbers
-- Find the numbers that appear at least three times in a row in a log table.
-- This pattern is commonly tested to evaluate understanding of self‑joins or window
-- functions.  Below are two approaches: a self‑join solution that works on older
-- versions of MySQL, and a modern solution using window functions (supported in
-- MySQL 8+, PostgreSQL, BigQuery and Snowflake).

/*
Self‑join solution
------------------

Given a table `Logs` with columns `Id INT` and `Num INT`, we want to return
unique `Num` values that appear three times consecutively by `Id`.  The idea
is to join the table to itself twice, shifting each join by one row, and then
compare the `Num` values.

SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.Id = l2.Id - 1
JOIN Logs l3 ON l2.Id = l3.Id - 1
WHERE l1.Num = l2.Num
  AND l2.Num = l3.Num;

The `Id` offsets (`Id = Id - 1`) ensure that `l2` and `l3` are the next
sequential rows after `l1`.  Filtering for equal `Num` values across all three
rows ensures we only capture triples.  `DISTINCT` removes duplicates.
*/

-- Window function solution
-- ------------------------
-- The same result can be achieved more elegantly using `LAG` to look back at
-- previous rows.  Window functions are available in most modern SQL engines.

SELECT DISTINCT Num AS ConsecutiveNums
FROM (
  SELECT
    Num,
    LAG(Num, 1) OVER (ORDER BY Id) AS prev1,
    LAG(Num, 2) OVER (ORDER BY Id) AS prev2
  FROM Logs
) t
WHERE Num = prev1 AND Num = prev2;

-- The subquery calculates the current value and the values from the previous
-- two rows.  Filtering where all three match returns numbers that occur three
-- times consecutively.
