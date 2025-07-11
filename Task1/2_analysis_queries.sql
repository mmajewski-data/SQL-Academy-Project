-- Task 1 point 3
-- a) Write a query to retrieve student details, such as student name, contact informations, and Enrollment status
SELECT
    s.stu_name,
    s.phone_no,
    s.email_id,
    s.address,
    STRING_AGG(e.enroll_status, ', ') AS enrollment_statuses
FROM
    studentinfo s
JOIN
    enrollmentinfo e ON s.stu_id = e.stu_id
GROUP BY
    s.stu_id
ORDER BY
    s.stu_name;
	

-- b) Write a query to retrieve a list of courses in which a specific student is enrolled
SELECT
	s.stu_name,
	STRING_AGG(c.course_name, ', ') AS courses_enrolled
FROM
	studentinfo s
JOIN
	enrollmentinfo e ON e.stu_id = s.stu_id
JOIN
	coursesinfo c ON c.course_id = e.course_id
WHERE
	e.enroll_status = 'Enrolled'
	AND s.stu_name = 'Jan Kowalski'
GROUP BY
	s.stu_name
ORDER BY
	s.stu_name;


-- c) Write a query to retrieve course information, including course name, instructor information
SELECT *
FROM coursesinfo c;

-- d) Write a query to retrieve course information for a specific course
SELECT *
FROM coursesinfo c
WHERE c.course_name = 'Introduction to SQL';

-- e) Write a query to retrieve course information for multiple courses
SELECT *
FROM coursesinfo c
WHERE c.course_name IN ('Introduction to SQL', 'Data Visualization with Tableau');

-- f) Test the queries to ensure accurate retrieval of student information (execute the queries and verify the results against the expected output)
-- ALL QUERIES TESTED

-- Task 1 point 4
-- a) Write a query to retrieve the number of students enrolled in each course
SELECT
	c.course_name,
	COUNT(e.stu_id) AS number_of_students	
FROM
	coursesinfo c 
JOIN enrollmentinfo e
	ON c.course_id = e.course_id
WHERE
	e.enroll_status = 'Enrolled'
GROUP BY
	c.course_name;


-- b) Write a query to retrieve the list of students enrolled in a specific course
SELECT
	c.course_name,
	STRING_AGG(s.stu_name,', ') AS list_of_students
FROM
	coursesinfo c 
JOIN enrollmentinfo e
	ON c.course_id = e.course_id
JOIN studentinfo s
	ON s.stu_id = e.stu_id
WHERE
	c.course_name = 'Advanced Python'
	AND e.enroll_status = 'Enrolled'
GROUP BY c.course_name;


-- c) Write a query to retrieve the count of enrolled students for each instructor.
SELECT
	c.course_instructor_name,
	COUNT(DISTINCT e.stu_id) AS number_of_students
FROM
	coursesinfo c
JOIN 
	enrollmentinfo e
	ON c.course_id = e.course_id
WHERE
	e.enroll_status = 'Enrolled'
GROUP BY
	c.course_instructor_name;


-- d) Write a query to retrieve the list of students who are enrolled in multiple courses
SELECT 
	s.stu_name,
	COUNT(e.course_id) AS number_of_courses
FROM
	studentinfo s 
JOIN enrollmentinfo e 
	ON s.stu_id = e.stu_id
WHERE
	e.enroll_status = 'Enrolled'
GROUP BY
	s.stu_id, s.stu_name
HAVING
	COUNT(e.course_id) > 1;


-- e) Write a query to retrieve the courses that have the highest number of enrolled students(arranging from highest to lowest)
SELECT 
	c.course_name,
	COUNT(e.stu_id) AS number_of_students
FROM
	coursesinfo c 
JOIN enrollmentinfo e 
	ON e.course_id = c.course_id
WHERE
	e.enroll_status = 'Enrolled'
GROUP BY
	c.course_id, c.course_name
ORDER BY
	number_of_students DESC;









