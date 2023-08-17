# Write your MySQL query statement below

SELECT RANK() OVER (ORDER BY id ASC) AS id, student 
FROM (
  SELECT (id-1) AS id, student
  FROM Seat
  WHERE mod(id, 2) = 0
  UNION
  SELECT (id+1) AS id, student
  FROM Seat
  WHERE mod(id, 2) = 1
) AS Temp