
---for module challenge deliverable one
--part1
SELECT DISTINCT ON (emp_no) employees.emp_no,
employees.first_name,
employees.last_name,
titles.title
INTO unique_titles
FROM titles
INNER JOIN employees
ON (employees.emp_no=titles.emp_no)
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

--part2
SELECT DISTINCT ON (emp_no) employees.emp_no,
employees.first_name,
employees.last_name,
titles.title
INTO unique_titles
FROM titles
INNER JOIN employees
ON (employees.emp_no=titles.emp_no)
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
 AND(titles.to_date= '9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT*FROM unique_TITLES;

--part3
SELECT COUNT(unique_titles.emp_no), unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

select*from retiring_titles;

--module deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
 e.first_name,
 e.last_name,
 e.birth_date,
 de.from_date,
 de.to_date,
 ti.title
INTO mentorship_eligibility 
FROM employees as e
INNER JOIN dept_emp as de
 ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
 ON (e.emp_no = ti.emp_no)
WHERE (ti.to_date = '9999-01-01')
and (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT*FROM mentorship_eligibility ;
