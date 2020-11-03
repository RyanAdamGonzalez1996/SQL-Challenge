/*1. List the following details of each employee: 
employee number, last name, first name, sex, and salary. */

SELECT e.emp_ID, e.last_name, e.first_name, e.sex, s.emp_Id
FROM salary s
JOIN employees e
ON (s.emp_ID = e.emp_ID)

/*2. List first name, last name, and hire date 
for employees who were hired in 1986.*/

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

/*3. List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name.*/

SELECT d.dept_ID, d.dept_name, e.emp_ID, e.last_name, e.first_name
FROM employees e
JOIN dept_manager dm
ON (e.emp_ID = dm.emp_ID)
JOIN departments d
ON (dm.dept_ID = d.dept_ID);

/* 4. List the department of each employee with the following information: 
employee number, last name, first name, and department name. */

SELECT e.emp_ID, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_ID = de.emp_ID)
JOIN departments d
ON (de.dept_ID = d.dept_ID);

/*5. List first name, last name, and sex for employees whose
first name is "Hercules" and last names begin with "B." */

SELECT first_name, last_name, sex
FROM employees
WHERE (first_name = 'Hercules') AND last_name LIKE 'B%';

/*6. List all employees in the Sales department, 
including their employee number, last name, first name, and department name. */

SELECT e.emp_ID, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_ID = de.emp_ID)
JOIN departments d
ON (de.dept_ID = d.dept_ID)
WHERE (d.dept_name = 'Sales');

/*7. List all employees in the Sales and Development departments, 
including their employee number, last name, first name, and department name. */

SELECT e.emp_ID, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON (e.emp_ID = de.emp_ID)
JOIN departments d
ON (de.dept_ID = d.dept_ID)
WHERE (d.dept_name = 'Sales') OR (d.dept_name = 'Development');

/*8. In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name. */