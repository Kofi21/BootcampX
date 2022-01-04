SELECT cohort.name as cohort_name, COUNT(assignment_submissions*) as total_submissions
FROM assignment_submissions 
JOIN students ON student.id = student_id
JOIN cohorts ON cohorts.id = cohorts_id
GROUP BY cohort_name
ORDER BY total_submissions DESC