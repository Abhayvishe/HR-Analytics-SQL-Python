-- Departments
INSERT INTO Departments VALUES (1,'IT');
INSERT INTO Departments VALUES (2,'HR');
INSERT INTO Departments VALUES (3,'Sales');

-- Generate 1000 Employees
BEGIN
  FOR i IN 1..1000 LOOP
    INSERT INTO Employee(emp_id, first_name, last_name, dept_id, designation, salary, hire_date)
    VALUES (
      i,
      DBMS_RANDOM.STRING('U',5),
      DBMS_RANDOM.STRING('U',7),
      MOD(i,3)+1,
      CASE MOD(i,4) WHEN 0 THEN 'Developer' WHEN 1 THEN 'Manager' WHEN 2 THEN 'Analyst' ELSE 'HR Executive' END,
      ROUND(DBMS_RANDOM.VALUE(30000,120000),2),
      TRUNC(SYSDATE - DBMS_RANDOM.VALUE(0,365*5))
    );
  END LOOP;
  COMMIT;
END;
/

-- Generate Payroll
BEGIN
  FOR i IN 1..1000 LOOP
    INSERT INTO Payroll(payroll_id, emp_id, basic_salary, allowances, deductions, net_salary, pay_date)
    VALUES (
      i,
      i,
      (SELECT salary FROM Employee WHERE emp_id=i),
      ROUND(DBMS_RANDOM.VALUE(2000,10000),2),
      ROUND(DBMS_RANDOM.VALUE(1000,5000),2),
      (SELECT salary FROM Employee WHERE emp_id=i) + ROUND(DBMS_RANDOM.VALUE(2000,10000),2) - ROUND(DBMS_RANDOM.VALUE(1000,5000),2),
      TRUNC(SYSDATE)
    );
  END LOOP;
  COMMIT;
END;
/

