USE GUVI_ZEN;

-- Inserting data into Mentors table
INSERT INTO Mentors (mentor_id, name, email)
VALUES
  (1, 'John Doe', 'john.doe@example.com'),
  (2, 'Jane Smith', 'jane.smith@example.com'),
  (3, 'Dave Grey', 'Dave.Grey@example.com'),
  (4, 'John David', 'John.David@example.com'),
  (5, 'Haris Wale', 'Haris.Wale@example.com'),
  (6, 'Dane Smith', 'Dane.smith@example.com');
  SELECT * FROM mentors ;

-- Inserting data into Batches table
INSERT INTO Batches (batch_id, batch_name, mentor_id)
VALUES
  (101, 'Batch A', 1),
  (102, 'Batch B', 2);
  
  SELECT * FROM Batches ;
  
-- Inserting data into students table
INSERT INTO Students(student_id,name,email,batch_id)
 VALUES
 (1001,'Uma','uma@gmail.com',101),
 (1002,'Vignesh','vignesh@gmail.com',101),
 (1003,'Hari','hari@gmail.com',101),
 (1004,'Seetha','seetha@gmail.com',101),
 (1005,'Ramya','ramya@gmail.com',101),
 (1006,'Arun','arun@gmail.com',101),
 (1007,'Mugesh','mugesh@gmail.com',101),
 (1008,'Vijay','vijay@gmail.com',101),
 (1009,'Ajith','ajith@gmail.com',101),
 (1010,'Vinay','vinay@gmail.com',101),
  (1011,'Naveen','naveen@gmail.com',102),
 (1012,'Vignesh','vignesh@gmail.com',102),
 (1013,'Hari','hari@gmail.com',102),
 (1014,'Seetha','seetha@gmail.com',102),
 (1015,'Ramya','ramya@gmail.com',102),
 (1016,'Priya','priya@gmail.com',102),
 (1017,'Mugesh','mugesh@gmail.com',102),
 (1018,'Bala','bala@gmail.com',102),
 (1019,'Ajith','ajith@gmail.com',102),
 (1020,'Vinay','vinay@gmail.com',102);
  SELECT * FROM Students ;

  INSERT INTO Courses (course_id, course_name)
VALUES
  (1, 'Web Development'),
  (2, 'Data Science'),
  (3, 'Mobile App Development');
    
SELECT * FROM Courses ;
    
    
    
    
    
    
    
    
    
INSERT INTO ZenClass (student_id,batch_id,course_id)
VALUES
(1001,101,1),
(1002,101,1),
(1003,101,1),
(1004,101,1),
(1005,101,1),
(1006,101,1),
(1007,101,1),
(1008,101,1),
(1009,101,1),
(1010,101,1),
(1011,101,2),
(1012,101,2),
(1013,101,2),
(1014,101,2),
(1015,101,2),
(1016,101,2),
(1017,101,2),
(1018,101,2),
(1019,101,2),
(1020,101,2);
  
SELECT * FROM mentors ;

--Designing a db model for GUVI ZEN class:

-- identifying the entities, relationships, and attributes

-- Entities:
-- Users:

Attributes: user_id (Primary Key), username, email, password, user_type (student/mentor/admin), etc.

Courses:

Attributes: course_id (Primary Key), course_name, description, price, etc.

Enrollments:

Attributes: enrollment_id (Primary Key), user_id (Foreign Key), course_id (Foreign Key), enrollment_date, etc.

Lessons:

Attributes: lesson_id (Primary Key), course_id (Foreign Key), lesson_name, content, video_url, lesson_order, etc.

Assignments:

Attributes: assignment_id (Primary Key), lesson_id (Foreign Key), assignment_name, description, deadline, etc.

Submissions:

Attributes: submission_id (Primary Key), assignment_id (Foreign Key), user_id (Foreign Key), submission_date, submitted_content, grade, etc.

Mentors:

Attributes: mentor_id (Primary Key), user_id (Foreign Key), mentor_name, specialization, etc.


-- Relationships:

-- *  Users can enroll in multiple courses, and each course can have multiple enrolled users (Many-to-Many relationship). This is represented by the Enrollments table.

--  * Each course has multiple lessons, and each lesson belongs to a specific course (One-to-Many relationship).

-- *  Lessons can have multiple assignments, and each assignment belongs to a specific lesson (One-to-Many relationship).

--  * Users can submit multiple assignments, and each assignment can have multiple submissions (One-to-Many relationship).

--  * Mentors are associated with users, and each mentor can mentor multiple users (One-to-Many relationship).



--  Entity-Relationship (ER) diagram:

+-----------------+        +--------------+        +------------+
|      Users      |        |   Courses    |        | Enrollments|
+-----------------+        +--------------+        +------------+
| user_id         |<-------o course_id    |<-------o user_id    |
| username        |        | course_name  |        | course_id   |
| email           |        | description  |        | enrollment_date
| password        |        | price        |        +------------+
| user_type       |        +--------------+
+-----------------+

+-----------------+        +-------------+         +---------+
|     Lessons     |        |Assignments       |         | Mentors |
+-----------------+        +-------------+         +---------+
| lesson_id       |<-------o lesson_id    |<--------o mentor_id|
| course_id       |        | assignment_name|      | user_id  |
| lesson_name     |        | description    |      | mentor_name|
| content         |        | deadline       |      | specialization|
| video_url       |        +-------------+           +---------+
| lesson_order    |
+-----------------+

+-----------------+
| Submissions    |
+-----------------+
| submission_id  |
| assignment_id  |
| user_id        |
| submission_date|
| submitted_content|
| grade          |
+-----------------+