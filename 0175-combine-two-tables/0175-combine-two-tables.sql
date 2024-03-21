# Write your MySQL query statement below

SELECT
    ps.firstName,
    ps.lastName,
    addr.city,
    addr.state
FROM Person AS ps
    LEFT JOIN Address AS addr ON ps.personId = addr.personId