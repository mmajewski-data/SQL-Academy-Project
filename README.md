# SQL Final Project for Business Analyst Academy
## 1. Introduction
This repository contains the final capstone project for the SQL course at the Business Analyst Academy. The project demonstrates a comprehensive understanding of database design, data manipulation, and advanced analytical queries using PostgreSQL.

The project is divided into four distinct tasks, each focusing on different aspects of SQL and database management.

## 2. Technologies Used
* **Database:** PostgreSQL
* **SQL Clients:** DBeaver, Beekeeper Studio
* **Version Control:** Git, GitHub
* **Code Editor:** Visual Studio Code

## 3. Project Structure
The project is organized into four main tasks, each with its own set of objectives and dedicated SQL scripts.

## Task 1: Academic Management System
**Objective:** To design and implement a relational database to manage students, courses, and enrollments.

### Key Activities:

* Created a database schema with three tables: Studentinfo, CoursesInfo, and EnrollmentInfo.
* Established relationships using Primary and Foreign Keys.
* Populated the database with sample data.
* Wrote a series of analytical queries using JOINs and aggregate functions to retrieve information about student enrollments and course popularity.

## Task 2: Student Database Management System
**Objective:** To practice a wide range of SQL commands on a single-table database, focusing on CRUD (Create, Read, Update, Delete) operations and data retrieval.

### Key Activities:

* Created a student_table with various data types and constraints (SERIAL, UNIQUE, CHECK).
* Performed data insertion, updates, and filtering using WHERE clauses.
* Calculated derived data, such as student age, using SQL functions like AGE().
* Used GROUP BY to perform aggregations.
* Implemented an advanced query using DENSE_RANK() to handle ties when finding the student with the highest GPA.

## Task 3: Event Management System
**Objective:** To build a system for managing events, attendees, and registrations, demonstrating a solid understanding of many-to-many relationships.

### Key Activities:

* Designed a three-table schema (events, attendees, registrations) with a junction table to handle registrations.
* Used ON DELETE CASCADE to ensure data integrity.
* Wrote queries to manage the full lifecycle of events and attendees (inserting, updating, deleting).
* Developed analytical queries to generate attendee lists for specific events and calculate attendance statistics, including revenue and popularity rankings.

## Task 4: OLAP (Online Analytical Processing) Operations
**Objective:** To explore and analyze sales data from different perspectives using advanced analytical functions common in data warehousing and business intelligence.

### Key Activities:

* Created a sales_sample table to simulate sales data across different products, regions, and dates.
* Performed conceptual Drill Down analysis by creating detailed summary reports with GROUP BY.
* Used ROLLUP to generate subtotals and grand totals for hierarchical data.
* Used CUBE to create a result set that shows aggregations for all possible combinations of the specified dimensions.
* Performed Slice and Dice operations by filtering the data on single and multiple dimensions using the WHERE clause.

## How to Run
* Ensure you have a running instance of PostgreSQL.
* Create the necessary databases for each task (e.g., AcademicMSdb, student_database, EventsManagement).
* Execute the _schema_setup.sql and _data_insertion.sql scripts for each task to create the tables and populate them with data.
* Run the queries from the _analysis_queries.sql files to see the results.

Author: Mateusz Majewski