# Employee Management System

## Project Overview
This project demonstrates an **Employee Management System** using **Oracle SQL**.  
It is designed to handle **large datasets (~1000+ employees)** and includes features such as payroll management, automated triggers, and reporting via views.  

The project structure is modular and ready for **industry-level GitHub upload**.

---

## Features
1. **Employee Management**  
   - Add, update, and delete employees.  
   - Track department, designation, and hire date.

2. **Payroll Management**  
   - Manage salaries, allowances, deductions, and net salary.  
   - Automatically update payroll when employee salary changes using triggers.  

3. **Database Views**  
   - `EmployeeSalaryView` provides a quick report of employees and their net salary.  

4. **Large Dataset Handling**  
   - Supports 1000+ employees and corresponding payroll data.  

5. **Data Integrity**  
   - Foreign key constraints and `ON DELETE CASCADE` ensure safe data deletion.

---

## Folder Structure
Employee-Management-System/
│
├─ sql_scripts/
│ ├─ 01_create_tables.sql -- Create tables
│ ├─ 02_insert_data.sql -- Insert large dataset
│ ├─ 03_triggers_views.sql -- Triggers and views
│ └─ 04_sample_queries.sql -- Sample queries
│
├─ docs/
│ ├─ ER_Diagram.png -- ER Diagram of tables



---

## Setup Instructions

1. **Install Oracle Database** (XE or full edition) and **SQL Developer**.  
2. **Open SQL Developer** and connect to your database.  
3. **Run Scripts in Order**:
   - `01_create_tables.sql` → Create tables  
   - `02_insert_data.sql` → Insert large dataset  
   - `03_triggers_views.sql` → Add triggers and views  
   - `04_sample_queries.sql` → Test queries and reporting  

4. **Test Deletion**:
```sql
DELETE FROM Employee WHERE emp_id = 2;  -- Payroll will auto-delete (ON DELETE CASCADE)


SELECT * FROM EmployeeSalaryView;


.
