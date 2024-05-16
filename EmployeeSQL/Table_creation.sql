CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE dept_emp (
    emp_no VARCHAR(20) NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_managers (
    dept_no VARCHAR(4) NOT NULL,
    emp_no VARCHAR(20) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE employees (
    emp_no VARCHAR(20) PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(20) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE titles (
    title_id VARCHAR(5) PRIMARY KEY NOT NULL,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE salaries (
    emp_no VARCHAR(20) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);




