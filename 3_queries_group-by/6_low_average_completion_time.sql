SELECT student.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average.estimated_duration
FROM students 
JOIN assignment_submissions ON student.id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL 
GROUP BY students
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;