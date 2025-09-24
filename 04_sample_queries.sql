-- Show all employees
SELECT * FROM Employee;

-- Payroll report
SELECT e.first_name, e.last_name, p.net_salary, p.pay_date
FROM Payroll p
JOIN Employee e ON e.emp_id = p.emp_id;

-- Increase salary of an employee
UPDATE Employee SET salary = salary + 5000 WHERE emp_id = 1;

-- Delete an employee
DELETE FROM Employee WHERE emp_id = 2;

