# Write your MySQL query statement below

SELECT user_id, ROUND(IFNULL(AVG(confirmed), 0), 2) as confirmation_rate
FROM Signups LEFT JOIN (
  SELECT user_id, time_stamp, 
    CASE action
      WHEN 'confirmed' THEN 1
      ELSE 0
    END AS confirmed
  FROM Confirmations) as confirmed USING(user_id)
GROUP BY user_id;
