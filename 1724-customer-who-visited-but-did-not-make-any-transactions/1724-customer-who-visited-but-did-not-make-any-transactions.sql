# Write your MySQL query statement below

SELECT customer_id, count(*) as count_no_trans
FROM Visits LEFT JOIN Transactions on Visits.visit_id = Transactions.visit_id
WHERE Transactions.visit_id is null
GROUP BY customer_id
HAVING count(*) > 0;