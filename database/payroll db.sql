
CREATE DATABASE payroll_system;

USE payroll_system;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    role ENUM('Admin','Employee') NOT NULL
);

INSERT INTO users (username, password, role) VALUES 
('admin', '1234', 'Admin'),
('Alice', 'alice123', 'Employee');

USE payroll_system;
CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    basic_salary DECIMAL(10,2)
);

USE payroll_system;
SELECT * FROM employees;

USE payroll_system;
CREATE TABLE IF NOT EXISTS attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    present BOOLEAN NOT NULL,
    overtime_hours DECIMAL(5,2)
);


USE payroll_system;
SELECT * FROM attendance;

use payroll_system;
CREATE TABLE payroll (
    payroll_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100),
    month DATE,
    basic_salary DOUBLE,
    hra DOUBLE,
    allowances DOUBLE,
    deductions DOUBLE,
    tax DOUBLE,
    pf DOUBLE,
    gross_salary DOUBLE,
    net_salary DOUBLE
);


USE payroll_system;
SELECT * FROM payroll;


ALTER TABLE employees ADD COLUMN username VARCHAR(50) UNIQUE;

USE payroll_system;
SELECT * FROM employees;
SELECT * FROM users;
SELECT * FROM attendance;
SELECT * FROM payroll;






