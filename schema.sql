-- Creating Tables for PH-EmployeeDB
Create Table departments (
dept_no VARCHAR(4) NOT NULL,
dept_name VARCHAR(40) NOT NULL,
Primary Key (dept_no),
Unique (dept_name)
	);

SELECT * FROM employees;
-- Create Table for Employees
Create Table employees (
emp_no int Not Null,
birth_date DATE Not Null,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
gender VARCHAR NOT NULL,
hire_date DATE NOT NULL,
Primary Key (emp_no)
);

SELECT * FROM dept_manager;
CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM salaries;
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

SELECT * FROM titles;
CREATE TABLE titles (
emp_no INT NOT NULL,
title VARCHAR(40),
from_date DATE NOT NULL,
to_date DATE NOT NULL,
foreign key (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM dept_emp;
CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR(4) NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
foreign key (emp_no) REFERENCES employees (emp_no)
	);