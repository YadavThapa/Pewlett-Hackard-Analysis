-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

a.
==========================================================
SELECT DISTINCT ON (emp_no) emp_no, 
first_name, 
last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

b.
==========================================================
--CREATING RETIRING TITLE TABLE
SELECT COUNT(emp_no), title 
INTO retiring_titles
from unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

============================================================

c.


SELECT employees.emp_no, employees.first_name, employees.last_name, employees.birth_date from employees;
===========================================================================================================
SELECT dept_emp.from_date, dept_emp.to_date from dept_emp;
===========================================================================================================
SELECT titles.titles from title;

===========================================================================================================

d. 
Query written for Employees Eligible for the Mentorship Program
===========================================================

SELECT DISTINCT ON (employees.emp_no) employees.emp_no, employees.first_name, employees.last_name, employees.birth_date, dept_emp.from_date,dept_emp.to_date, titles.title

INTO mentorship_eligibilty

FROM employees
INNER JOIN titles
ON
employees.emp_no= titles.emp_no
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp_no,to_date DESC;





