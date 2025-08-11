/*
Problem: Customers Who Never Order (LeetCode 183)

Tables:
  Customers(Id, Name)
  Orders(Id, CustomerId)

Find the names of all customers who never placed an order.  A customer is defined by their `Id` in the `Customers` table, and orders are linked via the `CustomerId` field in the `Orders` table.

Approach:
  Perform a `LEFT JOIN` from `Customers` to `Orders` on the `Id`/`CustomerId` key.  For customers who have not ordered anything, the joined row from `Orders` will be `NULL`.  Filter for `NULL` in the `Orders.Id` column to return only those customers.

Alternative:
  Use `NOT EXISTS` with a correlated subquery to find customers lacking matching rows in `Orders`.
*/

-- Solution using LEFT JOIN
SELECT
    c.Name AS Customers
FROM
    Customers AS c
LEFT JOIN Orders AS o
    ON c.Id = o.CustomerId
WHERE
    o.Id IS NULL;

-- Alternative solution using NOT EXISTS
-- SELECT
--     c.Name AS Customers
-- FROM
--     Customers AS c
-- WHERE
--     NOT EXISTS (
--         SELECT 1
--         FROM Orders AS o
--         WHERE o.CustomerId = c.Id
--     );
