# Write your MySQL query statement below

SELECT q2.person_name
FROM Queue q1 JOIN Queue q2
    ON q1.turn <= q2.turn
GROUP BY q2.turn
HAVING SUM(q1.weight) <= 1000
ORDER BY q2.turn DESC 
LIMIT 1


/* Explanation Table 생성
SELECT q2.person_id, q2.person_name, q2.turn, SUM(q1.weight) AS total_weight
FROM Queue q1 JOIN Queue q2
    ON q1.turn <= q2.turn
GROUP BY q2.turn
ORDER BY q2.turn
*/

/*
1~Q2 Turn의 값을 (q1.)turn Column이 List Up 
Q2.Turn으로 Group By하여 Total Weight를 구할 수 있음
SELECT q1.turn AS turn, q2.turn AS last_turn
FROM Queue q1 JOIN Queue q2
    ON q1.turn <= q2.turn
ORDER BY q2.turn ASC, q1.turn DESC
*/