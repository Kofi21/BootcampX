-- SELECT id, name
-- FROM students
-- WHERE cohort_id IN (1,2,3)
-- ORDER BY name asc

-- Get all of the students that don't have an email or phone number.

-- SELECT name, id, cohort_id
-- FROM students
-- WHERE email is NULL 
-- OR phone is NULL

-- Get all of the students without a gmail.com account and a phone number.

-- SELECT name, email, id, cohort_id
-- from students
-- WHERE email NOT LIKE '%gmail.com'
-- AND phone IS NULL

-- Get all of the students currently enrolled.

-- SELECT name, id, cohort_id
-- from students
-- WHERE end_date IS NULL
-- ORDER BY cohort_id

-- Get all graduates without a linked Github account.

SELECT name, email, phone
from students
WHERE Github IS NULL
AND end_date IS NOT NULL