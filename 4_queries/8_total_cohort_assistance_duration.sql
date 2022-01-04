SELECT cohort.name as cohort, sum(completed_at - started_at) AS total_duration
FROM  assistance_requests
JOIN students on students.id = student_id
JOIN cohort ON cohort.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration