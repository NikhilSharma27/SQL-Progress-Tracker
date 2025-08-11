/*
Problem: Combine Two Tables (LeetCode 175)

Tables:
  Person(PersonId, FirstName, LastName, Gender, Email)
  Address(AddressId, PersonId, City, State)

Write a query to report the first name, last name, city and state of each person.  If a person's address does not exist in the `Address` table, report null values for the city and state.

Approach:
  Use a `LEFT JOIN` from `Person` to `Address` on `PersonId` so that all people are returned regardless of whether they have an address.  Select the appropriate columns from each table.
*/

SELECT
    p.FirstName,
    p.LastName,
    a.City,
    a.State
FROM
    Person AS p
LEFT JOIN Address AS a
    ON p.PersonId = a.PersonId;
