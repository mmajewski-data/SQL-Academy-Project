-- 3. Student Information Retrieval
-- Develop a query to retrieve all students' information from the "student_table" and sort them in descending order by their grade
SELECT *
FROM student_table s
ORDER BY s.grade ASC; -- ASC is for A grade to be up top


-- 4. Query for Male Students
-- Implement a query to retrieve information about all male students from the "student_table"
SELECT *
FROM student_table s
WHERE s.gender = 'M';


-- 5. Query for Students with GPA less than 5.0
-- Create a query to fetch the details of students who have a GPA less than 5.0 from the "student_table"
SELECT *
FROM student_table s
WHERE s.GPA < 5.0;


-- 6. Update Student Email and Grade
-- Write an update statement to modify the email and grade of a student with a specific ID in the "student_table"
UPDATE student_table 
SET email_id = 'changedemail@university.edu', grade = 'B'
WHERE student_id = 1;


-- 7. Query for Students with Grade "B"
-- Develop a query to retrieve the names and ages of all students who have a grade of "B" from the "student_table"
SELECT s.stu_name, AGE(s.date_of_birth)
FROM student_table s
WHERE s.grade = 'B';


-- 8. Grouping and Calculation
-- Create a query to group the "student_table" by the "Department" and "Gender" columns and calculate the average GPA for each combination.
SELECT s.department, s.gender, ROUND(AVG(s.gpa), 2) AS avg_gpa
FROM student_table s
GROUP BY s.department, s.gender
ORDER BY s.department ASC;


-- 9. Table Renaming
-- Rename the "student_table" to "student_info" using the appropriate SQL statement.
ALTER TABLE student_table  RENAME TO student_info;


-- 10. Retrieve Student with Highest GPA
-- Write a query to retrieve the name of the student with the highest GPA from the "student_info" table.
WITH RankedStudents AS (
	SELECT s.stu_name, s.gpa, DENSE_RANK() OVER (ORDER BY gpa DESC) AS gpa_rank
	FROM student_info s
)
SELECT stu_name, gpa
FROM RankedStudents
WHERE gpa_rank = 1;