
---for module challange delivaerable one
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
SELECT DISTINCT ON (emp_no) employees.emp_no,
employees.first_name,
employees.last_name,
employees.birth_date,
dept_emp.from_date,
dept_emp.to_date,
titles.title
INTO mentorship_eligibility
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no= dept_emp.emp_no)
INNER JOIN titles
ON (employees.emp_no=titles.emp_no)
WHERE (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
 AND(dept_emp.to_date= '9999-01-01')
ORDER BY emp_no;

SELECT*FROM mentorship_eligibility;
