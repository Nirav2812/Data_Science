CREATE DATABASE student_course_db;

USE student_course_db;
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    fees INT
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO courses (course_id, course_name, fees)
VALUES
(1, 'Python', 15000),
(2, 'Data Science', 25000),
(3, 'Web Development', 20000),
(4, 'Artificial Intelligence', 30000),
(5, 'Data Analytics', 22000);

INSERT INTO students (student_id, student_name, age, city, course_id)
VALUES
(101, 'Aarav', 19, 'Ahmedabad', 1),
(102, 'Riya', 20, 'Ahmedabad', 2),
(103, 'Rahul', 18, 'Surat', 3),
(104, 'Ananya', 21, 'Ahmedabad', 4),
(105, 'Dev', 22, 'Vadodara', 2),
(106, 'Amit', 19, 'Surat', 1),
(107, 'Priya', 20, 'Ahmedabad', 5),
(108, 'Akash', 23, 'Rajkot', 4),
(109, 'Neha', 18, 'Surat', 3),
(110, 'Arjun', 21, 'Ahmedabad', 2);

SELECT * FROM students;

SELECT * FROM students
WHERE age > 18;

SELECT * FROM students
WHERE student_name LIKE 'A%';

SELECT * FROM students
ORDER BY student_name ASC;

SELECT DISTINCT city
FROM students;

SELECT * FROM students
WHERE city = 'Ahmedabad'
AND age > 18;

SELECT * FROM students
WHERE age BETWEEN 18 AND 22;

SELECT COUNT(*) AS total_students
FROM students;

SELECT city, COUNT(*) AS total_students FROM students
GROUP BY city;

SELECT city, COUNT(*) AS total_students FROM students
GROUP BY city
HAVING COUNT(*) > 2;

SELECT s.student_name, c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id;

SELECT s.student_name,c.course_name,c.fees
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id
WHERE c.fees > 20000;

SELECT c.course_name,COUNT(s.student_id) AS total_students
FROM courses c
INNER JOIN students s
ON c.course_id = s.course_id
GROUP BY c.course_id, c.course_name;

SELECT MIN(fees) AS minimum_fees,MAX(fees) AS maximum_fees
FROM courses;

SELECT s.student_name,s.city,c.course_name, c.fees
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id
ORDER BY c.fees DESC;



-- SUBQUARIES

SELECT * FROM EMPLOYEES;
WHERE SALARY> (SELECT AVG(SALARY) FROM EMPLOYEES)

SELECT * FROM EMPLOYEES;
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES)

-- EMPLOYEES EARNING LESS THEN MINIMUM SALARY OF DEP 60

SELECT * FROM EMPLOYEES 
WHERE SALARY <
(SELECT MIN(SALARY) FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60);

-- FIND EMPLOYEES WHO WORK IN DEPARTMENTS LOCATED IN US
SELECT LOCATION_ID,DEPARTMENT_ID,DEPARTMENT_NAME FROM DEPARTMENTS;
WHERE LOCATION_ID IN 
(SELECT LOCATION_ID FROM LOCATIONS 
WHERE COUNTRY_ID = 'us')

-- DISPLAY EVERY EMPLOYEES ALONG WITH THE AVERAGE SALARY OF ALL EMPLOYEES

SELECT first_name, last_name, salary,
(SELECT AVG(salary) FROM employees) AS AVG_SAL
FROM employees;