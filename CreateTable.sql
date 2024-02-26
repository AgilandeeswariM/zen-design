CREATE DATABASE GUVI_ZEN;
SHOW databases;

USE GUVI_ZEN;
-- Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    batch_id INT,
    FOREIGN KEY (batch_id) REFERENCES Batches(batch_id)
);

-- Mentors table
CREATE TABLE Mentors (
    mentor_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

-- Batches table
CREATE TABLE Batches (
    batch_id INT PRIMARY KEY,
    batch_name VARCHAR(50),
    mentor_id INT,
    FOREIGN KEY (mentor_id) REFERENCES Mentors(mentor_id)
);

-- Inserting data into Courses table
CREATE TABLE Courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(40)
);

-- ZenClass table to associate students with batches
CREATE TABLE ZenClass (
    student_id INT,
    batch_id INT,
    course_id INT,
    PRIMARY KEY (student_id, batch_id,course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (batch_id) REFERENCES Batches(batch_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

describe ZenClass;