-- Drop table if exist
DROP TABLE departments;

-- Create new table
CREATE TABLE departments (
	dept_no VARCHAR(5),
	dept_name VARCHAR(30) NOT NULL,
	Primary Key (dept_no)
);

-- View table columns and datatypes
SELECT * FROM departments;

-- Drop table if exist
DROP TABLE employees;

-- Create new table
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	Primary Key (emp_no)
);

-- View table columns and datatypes
SELECT * FROM employees;

-- Drop table if exist
DROP TABLE dept_emp;

-- Create new table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	Foreign Key (emp_no) REFERENCES employees(emp_no),
	Foreign Key (dept_no) REFERENCES departments(dept_no)
);


-- View table columns and datatypes
SELECT * FROM dept_emp;

-- Drop table if exist
DROP TABLE dept_managers;

-- Create new table
CREATE TABLE dept_managers (
	dept_no VARCHAR(5),
	emp_no INT,
	Foreign Key (dept_no) REFERENCES departments(dept_no),
	Foreign Key (emp_no) REFERENCES employees(emp_no)
);


-- View table columns and datatypes
SELECT * FROM dept_managers;


-- Drop table if exist
DROP TABLE salaries;

-- Create new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- View table columns and datatypes
SELECT * FROM salaries;

-- Drop table if exist
DROP TABLE titles;

-- Create new table
CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR(30) NOT NULL,
	Foreign Key(emp_no) REFERENCES employees(emp_no)
);

-- View table columns and datatypes
SELECT * FROM titles;
