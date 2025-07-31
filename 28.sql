-- THE SELECT Statement
# this retrieves data from the database

SELECT *
FROM student_demographics
;
SELECT first_name, last_name, age
FROM student_demographics;

-- DISTINCT 
SELECT DISTINCT gender 
FROM student_demographics;

-- ORDER BY IS USED FOR SORTING 
SELECT * 
FROM student_demographics
ORDER BY first_name DESC;

-- AGGREGATE FUNCTION -- COUNT, SUM, MAX, MIN, AVG
SELECT COUNT(gender)
FROM student_demographics; 

SELECT max(age)
FROM student_demographics;

-- Display the average age of each gender
SELECT DISTINCT gender, avg(age), MIN(age), max(age), COUNT(gender)
FROM student_demographics
GROUP BY gender;

-- WHERE 
SELECT * 
FROM student_demographics
WHERE age != 25; -- <, >, =, <=, >=




SELECT * 
FROM student_demographics
WHERE gender = 'Male'
ORDER BY first_name;


-- Having and Like
SELECT * 
FROM student_demographics
HAVING gender = 'Male'
;

SELECT * 
FROM student_demographics
WHERE first_name LIKE '%e%'
;

-- LOGICAL Statement -- AND, OR, AND NOT, OR NOT
SELECT * 
FROM student_demographics
WHERE age <=30 OR gender = 'female'
;

SELECT * 
FROM student_demographics
WHERE age >=30 OR NOT gender = 'female'
;

-- JOINS 
SELECT * 
FROM student_demographics
;
SELECT * FROM student_fee;

SELECT * 
FROM student_demographics AS dem
JOIN student_fee AS fee
ON dem.student_id = fee.student_id
;

-- ALIASING (AS STATEMENT)
SELECT LOWER('PROSPER') AS pp;

SELECT * 
FROM student_demographics AS dem
JOIN student_fee AS fee
ON dem.student_id = fee.student_id
;

SELECT dem.student_id, dem.first_name, dem.last_name, age, gender, birth_date, course, fee, department_id
FROM student_demographics AS dem
JOIN student_fee AS fee
ON dem.student_id = fee.student_id
WHERE fee <=70000
;

SELECT gender,  sum(fee), AVG(fee), MIN(fee), MAX(fee), MIN(Age)
FROM student_demographics AS dem
JOIN student_fee AS fee
ON dem.student_id = fee.student_id
GROUP BY gender
;

-- sub strings -- outer n inner joins -- union, windows function

-- join the 3 tables