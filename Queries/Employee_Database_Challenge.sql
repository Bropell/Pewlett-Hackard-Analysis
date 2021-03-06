-- DELIVERABLE 1

SELECT emp_no, first_name, last_name
FROM employees;

SELECT title, from_date, to_date
FROM titles;


-- Create new table by joining employees table and titles table on primary keys
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;


-- Remove duplicate entries for employees 
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;


-- Retrieve the number of employees by their most recent job title who are about to retire
SELECT COUNT(title) as Count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY Count DESC;

SELECT * FROM retiring_titles;

-- DELIVERABLE 2
-- Create a Mentorship Eligibility table that holds eligible employees
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, 
de.from_date, de.to_date, 
t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;


-- Total Employees (300,024)
SELECT COUNT(emp_no)
FROM employees;

-- Retiring Employees (72,458)
SELECT sum(count)
FROM retiring_titles;

-- Total mentors (1,549)
SELECT COUNT(emp_no)
FROM mentorship_eligibility;

-- Mentors by Department
SELECT COUNT(title) as Count, title
INTO mentors_by_department
FROM mentorship_eligibility
GROUP BY title
ORDER BY Count DESC;

SELECT * FROM mentors_by_department;