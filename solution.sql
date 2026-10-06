
Create Database
CREATE DATABASE CollegeDB;

-- Select Database
USE CollegeDB;

-- Create Marksheet Table
CREATE TABLE Marksheet (
    RollNo INT,
    Name VARCHAR(50),
    Department VARCHAR(20),
    Marks INT
);

-- Insert Sample Values
INSERT INTO Marksheet (RollNo, Name, Department, Marks)
VALUES
(1, 'Arun', 'CSE', 85),
(2, 'Divya', 'IT', 78),
(3, 'Karthik', 'CSE', 92),
(4, 'Nisha', 'ECE', 67),
(5, 'Rahul', 'IT', 88);

-- Display All Records
SELECT * FROM Marksheet;

-- Display students whose marks are greater than 80
-- Sort in descending order
SELECT *
FROM Marksheet
WHERE Marks > 80
ORDER BY Marks DESC;
