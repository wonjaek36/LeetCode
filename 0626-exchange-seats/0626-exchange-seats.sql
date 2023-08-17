# Write your MySQL query statement below

# USE CASE END
SELECT 
  CASE
    WHEN id % 2 = 1 AND id = (SELECT COUNT(*) FROM Seat) THEN id
    WHEN id % 2 = 0 THEN id-1
    ELSE id+1
  END AS id,
  student

FROM Seat
ORDER BY id


/* FIRST IDEA
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
*/