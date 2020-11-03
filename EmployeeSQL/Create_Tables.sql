CREATE TABLE departments(
	dept_ID VARCHAR(10),
	dept_name VARCHAR(25),
	PRIMARY KEY (dept_ID)
);

CREATE TABLE salary(
	emp_ID INT,
	salary INT,
	PRIMARY KEY (emp_ID)
);

CREATE TABLE titles(
	title_ID VARCHAR(10),
	title VARCHAR(30),
	PRIMARY KEY (title_ID)
);

CREATE TABLE employees(
	emp_ID INT,
	emp_title VARCHAR(15),
	birth_date VARCHAR(20),
	first_name VARCHAR(30),
	last_name VARCHAR(40),
	sex VARCHAR(5),
	hire_date VARCHAR(15),
	PRIMARY KEY (emp_ID),
	FOREIGN KEY (emp_title) REFERENCES titles(title_ID)
);

CREATE TABLE dept_emp(
	emp_ID INT,
	dept_ID VARCHAR(10),
	FOREIGN KEY (emp_ID) REFERENCES employees(emp_ID),
	FOREIGN KEY (dept_ID) REFERENCES departments(dept_ID),
	PRIMARY KEY (emp_ID , dept_ID)
);

CREATE TABLE dept_manager(
	dept_ID VARCHAR(10),
	emp_ID INT,
	FOREIGN KEY (dept_ID) REFERENCES departments(dept_ID),
	FOREIGN KEY (emp_ID) REFERENCES employees(emp_ID),
	PRIMARY KEY (dept_ID , emp_ID)
);
