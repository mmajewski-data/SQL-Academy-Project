DROP TABLE IF EXISTS EnrollmentInfo CASCADE;
DROP TABLE IF EXISTS Studentinfo CASCADE;
DROP TABLE IF EXISTS CoursesInfo CASCADE;


-- Table 1: Studentinfo
CREATE TABLE Studentinfo (
    STU_ID INT PRIMARY KEY,
    STU_NAME VARCHAR(100),
    DOB DATE,
    PHONE_NO VARCHAR(20),
    EMAIL_ID VARCHAR(100),
    ADDRESS VARCHAR(255)
);

-- Table 2: CoursesInfo
CREATE TABLE CoursesInfo (
    COURSE_ID INT PRIMARY KEY,
    COURSE_NAME VARCHAR(100),
    COURSE_INSTRUCTOR_NAME VARCHAR(100)
);

-- Table 3: EnrollmentInfo
CREATE TABLE EnrollmentInfo (
    ENROLLMENT_ID INT PRIMARY KEY,
    STU_ID INT,
    COURSE_ID INT,
    ENROLL_STATUS VARCHAR(20),
    FOREIGN KEY (STU_ID) REFERENCES Studentinfo(STU_ID),
    FOREIGN KEY (COURSE_ID) REFERENCES CoursesInfo(COURSE_ID)
);

-- Adding data to Studentinfo
INSERT INTO Studentinfo (STU_ID, STU_NAME, DOB, PHONE_NO, EMAIL_ID, ADDRESS) VALUES
(1, 'Jan Kowalski', '1998-05-20', '501123456', 'jan.kowalski@example.com', 'ul. Długa 1, Gdańsk'),
(2, 'Anna Nowak', '1999-09-15', '502234567', 'anna.nowak@example.com', 'ul. Szeroka 2, Sopot'),
(3, 'Piotr Wiśniewski', '1997-02-10', '503345678', 'piotr.wisniewski@example.com', 'ul. Morska 3, Gdynia'),
(4, 'Katarzyna Dąbrowska', '2000-11-30', '504456789', 'k.dabrowska@example.com', 'ul. Wąska 4, Gdańsk'),
(5, 'Tomasz Lewandowski', '1999-07-22', '505567890', 't.lewandowski@example.com', 'ul. Krótka 5, Sopot');

-- Adding data to CoursesInfo
INSERT INTO CoursesInfo (COURSE_ID, COURSE_NAME, COURSE_INSTRUCTOR_NAME) VALUES
(101, 'Introduction to SQL', 'Dr. Adam Iksiński'),
(102, 'Advanced Python', 'Dr. Ewa Igrekowska'),
(103, 'Data Visualization with Tableau', 'Dr. Adam Iksiński'),
(104, 'Machine Learning Basics', 'Dr. Janina Zetowska');

-- Adding data to EnrollmentInfo
INSERT INTO EnrollmentInfo (ENROLLMENT_ID, STU_ID, COURSE_ID, ENROLL_STATUS) VALUES
(1001, 1, 101, 'Enrolled'),
(1002, 1, 103, 'Enrolled'),
(1003, 2, 102, 'Enrolled'),
(1004, 3, 101, 'Enrolled'),
(1005, 3, 104, 'Not Enrolled'), -- Note: This student is not enrolled in the course
(1006, 4, 102, 'Enrolled'),
(1007, 5, 104, 'Enrolled');

