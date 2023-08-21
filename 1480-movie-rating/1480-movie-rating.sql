# Write your MySQL query statement below

(SELECT name as results
FROM MovieRating mv INNER JOIN Users u
    ON mv.user_id = u.user_id
GROUP BY name
ORDER BY COUNT(*) DESC, name ASC
LIMIT 1)
UNION ALL
(SELECT title as results 
FROM MovieRating mv INNER JOIN Movies m
    ON mv.movie_id = m.movie_id
WHERE DATE_FORMAT(mv.created_at, '%Y-%m') = '2020-02'
GROUP BY title
ORDER BY AVG(rating) DESC, title ASC
LIMIT 1)