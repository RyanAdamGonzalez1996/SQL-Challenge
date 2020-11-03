/*List the following details of each employee: 
employee number, last name, first name, sex, and salary. */

SELECT e.emp_ID, e.last_name, e.first_name, e.sex, s.emp_Id
FROM salary s
JOIN employees e
ON (s.emp_ID = e.emp_ID)
