-- Creating table student_table
CREATE TABLE student_table (
    student_id SERIAL PRIMARY KEY,
    stu_name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    email_id VARCHAR(100) UNIQUE, 
    phone_no VARCHAR(20), 
    address VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(20),
    major VARCHAR(100),
    gpa NUMERIC(4, 2),
    grade VARCHAR(2) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F'))
);

-- Inserting sample data
INSERT INTO student_table (stu_name, department, email_id, phone_no, address, date_of_birth, gender, major, gpa, grade) VALUES
('Anna Kowalska', 'Faculty of Computer Science', 'anna.kowalska@university.edu', '501123456', 'ul. Grunwaldzka 10, 80-244 Gdańsk', '2004-05-12', 'F', 'Software Engineering', 8.75, 'A'),
('Piotr Nowak', 'Faculty of Economics', 'piotr.nowak@university.edu', '502234567', 'ul. Szeroka 5, 80-835 Gdańsk', '2003-09-22', 'M', 'Finance and Accounting', 7.50, 'B'),
('Jan Wiśniewski', 'Faculty of Computer Science', 'jan.wisniewski@university.edu', '503345678', 'ul. Długa 44, 80-827 Sopot', '2004-02-15', 'M', 'Computer Networks', 9.10, 'A'),
('Katarzyna Wójcik', 'Faculty of Management', 'katarzyna.wojcik@university.edu', '504456789', 'al. Zwycięstwa 20, 81-521 Gdynia', '2005-11-30', 'F', 'Project Management', 6.80, 'C'),
('Tomasz Zieliński', 'Faculty of Economics', 'tomasz.zielinski@university.edu', '505567890', 'ul. Świętojańska 110, 81-388 Gdynia', '2003-07-19', 'M', 'Econometrics', 4.50, 'E'),
('Magdalena Kamińska', 'Faculty of Humanities', 'magdalena.kaminska@university.edu', '506678901', 'ul. Wita Stwosza 57, 80-308 Gdańsk', '2004-08-01', 'F', 'English Philology', 8.20, 'B'),
('Marek Szymański', 'Faculty of Computer Science', 'marek.szymanski@university.edu', '507789012', 'ul. Morska 1, 81-323 Gdynia', '2002-12-05', 'M', 'Databases', 9.50, 'A'),
('Agnieszka Lewandowska', 'Faculty of Management', 'agnieszka.lewandowska@university.edu', '508890123', 'ul. Haffnera 33, 81-717 Sopot', '2005-01-25', 'F', 'Marketing', 7.95, 'B'),
('Krzysztof Dąbrowski', 'Faculty of Economics', 'krzysztof.dabrowski@university.edu', '509901234', 'ul. 3 Maja 22, 81-861 Sopot', '2003-03-14', 'M', 'Banking', 6.50, 'C'),
('Ewa Jankowska', 'Faculty of Humanities', 'ewa.jankowska@university.edu', '510012345', 'ul. Mariacka 2, 80-833 Gdańsk', '2004-06-08', 'F', 'Art History', 7.10, 'C');