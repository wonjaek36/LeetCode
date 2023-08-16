# Write your MySQL query statement below

SELECT DISTINCT(ConsecutiveNums)
FROM (
SELECT 
  IF(l1.num = l2.num AND l2.num = l3.num, l1.num, null) AS ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3
WHERE l1.id = l2.id - 1 AND l1.id = l3.id - 2) AS TempTable
WHERE ConsecutiveNums is not null