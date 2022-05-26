Drop table challenge_table cascade;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO challenge_table
FROM employees as e
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

Select * FROM challenge_table

-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (ct.emp_no) ct.emp_no,
ct.first_name,
ct.last_name,
ct.title

INTO unique_titles
FROM challenge_table AS ct
WHERE (ct.to_date BETWEEN '9999-01-01' AND '9999-01-01')
ORDER BY ct.emp_no, ct.from_date DESC;

SELECT * FROM unique_titles


DROP TABLE retiring_titles

--COUNT THE NUMBER OF RETIREES BY JOB TITLE
SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title 
ORDER BY COUNT DESC

SELECT * FROM retiring_titles

--DELIVERABLE 2

SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_availability
FROM employees AS e
LEFT JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date BETWEEN '9999-01-01' AND '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no

SELECT * FROM mentorship_availability