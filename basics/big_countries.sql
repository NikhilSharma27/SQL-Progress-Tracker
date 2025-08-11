/*
Problem: Big Countries (LeetCode 595)

Table:
  World(Name, Continent, Area, Population, GDP)

Return the name, population and area of countries that are considered "big".  A country is big if it has an area of at least 3 million square kilometres **or** a population of at least 25 million.

Approach:
  Filter the `World` table using the provided conditions on `Area` and `Population`.  Use `>=` for threshold checks and `OR` to combine the two criteria.
*/

SELECT
    Name,
    Population,
    Area
FROM
    World
WHERE
    Area >= 3000000
    OR Population >= 25000000;
