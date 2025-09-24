-- Trigger: Update Payroll after salary change
CREATE OR REPLACE TRIGGER update_payroll_after_salary_change
AFTER UPDATE OF salary ON Employee
FOR EACH ROW
BEGIN
  UPDATE Payroll
  SET basic_salary = :NEW.salary,
      net_salary = :NEW.salary + allowances - deductions
  WHERE emp_id = :NEW.emp_id;
END;
/

-- View: Employee + Net Salary
CREATE OR REPLACE VIEW EmployeeSalaryView AS
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, e.designation, p.net_salary, p.pay_date
FROM Employee e
JOIN Payroll p ON e.emp_id = p.emp_id
JOIN Departments d ON e.dept_id = d.dept_id;

