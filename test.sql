-- ============================================================
-- SQL AUTO GRADING TEST
-- MARKSHEET
-- ============================================================

USE CollegeDB;


-- ============================================================
-- TEST 1: Marksheet table exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Marksheet table exists'
    ELSE 'FAIL - Marksheet table does not exist'
END AS Result
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet';


-- ============================================================
-- TEST 2: Marksheet has exactly 4 columns
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 4
    THEN 'PASS - Marksheet has exactly 4 columns'
    ELSE 'FAIL - Marksheet must have exactly 4 columns'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet';


-- ============================================================
-- TEST 3: RollNo column exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - RollNo column exists'
    ELSE 'FAIL - RollNo column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet'
AND COLUMN_NAME = 'RollNo';


-- ============================================================
-- TEST 4: RollNo is INT
-- ============================================================

SELECT
CASE
    WHEN DATA_TYPE IN ('int', 'integer')
    THEN 'PASS - RollNo is INT'
    ELSE 'FAIL - RollNo must be INT'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet'
AND COLUMN_NAME = 'RollNo';


-- ============================================================
-- TEST 5: RollNo is PRIMARY KEY
-- ============================================================

SELECT
CASE
    WHEN COLUMN_KEY = 'PRI'
    THEN 'PASS - RollNo is PRIMARY KEY'
    ELSE 'FAIL - RollNo must be PRIMARY KEY'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet'
AND COLUMN_NAME = 'RollNo';


-- ============================================================
-- TEST 6: Name column exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Name column exists'
    ELSE 'FAIL - Name column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet'
AND COLUMN_NAME = 'Name';


-- ============================================================
-- TEST 7: Department column exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Department column exists'
    ELSE 'FAIL - Department column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet'
AND COLUMN_NAME = 'Department';


-- ============================================================
-- TEST 8: Marks column exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Marks column exists'
    ELSE 'FAIL - Marks column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet'
AND COLUMN_NAME = 'Marks';


-- ============================================================
-- TEST 9: Marks is INT
-- ============================================================

SELECT
CASE
    WHEN DATA_TYPE IN ('int', 'integer')
    THEN 'PASS - Marks is INT'
    ELSE 'FAIL - Marks must be INT'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Marksheet'
AND COLUMN_NAME = 'Marks';


-- ============================================================
-- TEST 10: Exactly 5 records inserted
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 5
    THEN 'PASS - 5 records inserted'
    ELSE 'FAIL - Exactly 5 records are required'
END AS Result
FROM Marksheet;


-- ============================================================
-- TEST 11: Arun record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Arun record is correct'
    ELSE 'FAIL - Arun record is missing or incorrect'
END AS Result
FROM Marksheet
WHERE RollNo = 1
AND Name = 'Arun'
AND Department = 'CSE'
AND Marks = 85;


-- ============================================================
-- TEST 12: Divya record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Divya record is correct'
    ELSE 'FAIL - Divya record is missing or incorrect'
END AS Result
FROM Marksheet
WHERE RollNo = 2
AND Name = 'Divya'
AND Department = 'IT'
AND Marks = 78;


-- ============================================================
-- TEST 13: Karthik record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Karthik record is correct'
    ELSE 'FAIL - Karthik record is missing or incorrect'
END AS Result
FROM Marksheet
WHERE RollNo = 3
AND Name = 'Karthik'
AND Department = 'CSE'
AND Marks = 92;


-- ============================================================
-- TEST 14: Nisha record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Nisha record is correct'
    ELSE 'FAIL - Nisha record is missing or incorrect'
END AS Result
FROM Marksheet
WHERE RollNo = 4
AND Name = 'Nisha'
AND Department = 'ECE'
AND Marks = 67;


-- ============================================================
-- TEST 15: Rahul record
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Rahul record is correct'
    ELSE 'FAIL - Rahul record is missing or incorrect'
END AS Result
FROM Marksheet
WHERE RollNo = 5
AND Name = 'Rahul'
AND Department = 'IT'
AND Marks = 88;


-- ============================================================
-- TEST 16: Exactly 3 students have marks greater than 80
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 3
    THEN 'PASS - 3 students have marks greater than 80'
    ELSE 'FAIL - Expected 3 students with marks greater than 80'
END AS Result
FROM Marksheet
WHERE Marks > 80;


-- ============================================================
-- TEST 17: Highest mark is 92
-- ============================================================

SELECT
CASE
    WHEN MAX(Marks) = 92
    THEN 'PASS - Highest mark is 92'
    ELSE 'FAIL - Highest mark should be 92'
END AS Result
FROM Marksheet
WHERE Marks > 80;


-- ============================================================
-- FINAL RESULT
-- Marks > 80, sorted descending
-- ============================================================

SELECT
    RollNo,
    Name,
    Department,
    Marks
FROM Marksheet
WHERE Marks > 80
ORDER BY Marks DESC;
