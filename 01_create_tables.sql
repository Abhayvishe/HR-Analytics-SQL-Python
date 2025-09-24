01_create_tables.sql

-- Departments Table
CREATE TABLE Departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

-- Employee Table
CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    dept_id NUMBER REFERENCES Departments(dept_id),
    designation VARCHAR2(50),
    salary NUMBER(10,2),
    hire_date DATE
);

-- Payroll Table
CREATE TABLE Payroll (
    payroll_id NUMBER PRIMARY KEY,
    emp_id NUMBER REFERENCES Employee(emp_id),
    basic_salary NUMBER(10,2),
    allowances NUMBER(10,2),
    deductions NUMBER(10,2),
    net_salary NUMBER(10,2),
    pay_date DATE
);

