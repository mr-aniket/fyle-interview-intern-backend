-- Write query to get number of graded assignments for each student:
SELECT 
  s.id,
  s.user_id,
  COUNT(a.id) AS num_graded_assignments
FROM 
  assignments a
  JOIN students s ON a.student_id = s.id
WHERE 
  a.state = 'GRADED'
GROUP BY 
  s.id, s.user_id
ORDER BY 
  num_graded_assignments DESC;