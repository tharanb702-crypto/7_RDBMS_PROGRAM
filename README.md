# SQL Auto Grading – Marksheet

## Question

Create a `Marksheet` table with the following fields:

- RollNo
- Name
- Department
- Marks

Insert the following sample values:

| RollNo | Name    | Department | Marks |
|---|---|---|---:|
| 1 | Arun    | CSE | 85 |
| 2 | Divya   | IT  | 78 |
| 3 | Karthik | CSE | 92 |
| 4 | Nisha   | ECE | 67 |
| 5 | Rahul   | IT  | 88 |

Display students whose marks are greater than 80.

Sort the result in descending order of Marks.

## Database

CollegeDB

## Requirements

1. Create the `Marksheet` table.
2. Create the following columns:
   - RollNo
   - Name
   - Department
   - Marks
3. Insert all 5 given records.
4. Display only students whose Marks are greater than 80.
5. Sort the result by Marks in descending order.

## Expected Result

| RollNo | Name    | Department | Marks |
|---:|---|---|---:|
| 3 | Karthik | CSE | 92 |
| 5 | Rahul   | IT  | 88 |
| 1 | Arun    | CSE | 85 |

## Student Instructions

Write your SQL program in:

solution.sql
