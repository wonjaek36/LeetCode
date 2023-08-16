# Write your MySQL query statement below

SELECT student_id, student_name, subject_name, IFNULL(ec, 0) as attended_exams
FROM 
  (SELECT student_id, student_name, subject_name
   FROM Students CROSS JOIN Subjects) as stt
  LEFT JOIN 
  (SELECT student_id, subject_name, count(*) as ec
   FROM Examinations
   GROUP BY student_id, subject_name) as ext USING(student_id, subject_name)
ORDER BY student_id, subject_name