# Write your MySQL query statement below

SELECT cw.id
FROM Weather as cw 
INNER JOIN Weather as pw on DATEDIFF(cw.recordDate, pw.recordDate) = 1
WHERE cw.temperature > pw.temperature;