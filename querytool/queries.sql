-- List the employee number, last name, first name,
-- sex, and salary of each employee.

SELECT 
    e.emp_id AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    e.sex AS "Sex",
    s.salary AS "Salary"
FROM 
    "Employees" e
JOIN 
    "Salaries" s ON e.emp_id = s.emp_id;

-- List the first name, last name, and hire date 
-- for the employees who were hired in 1986

SELECT 
    first_name AS "First Name",
    last_name AS "Last Name",
    hire_date AS "Hire Date"
FROM 
    "Employees"
WHERE 
    EXTRACT(YEAR FROM hire_date) = 1986;

-- List the manager of each department along with their department number,
-- department name, employee number, last name, and first name

SELECT 
    dm.dept_id AS "Department Number",
    d.dept_name AS "Department Name",
    dm.emp_id AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM 
    "Dept_Managers" dm
JOIN 
    "Departments" d ON dm.dept_id = d.dept_id
JOIN 
    "Employees" e ON dm.emp_id = e.emp_id;

--List the department number for each employee along with that employee’s 
-- employee number, last name, first name, and department name

SELECT 
    de.dept_id AS "Department Number",
    e.emp_id AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    d.dept_name AS "Department Name"
FROM 
    "Dept_Employees" de
JOIN 
    "Employees" e ON de.emp_id = e.emp_id
JOIN 
    "Departments" d ON de.dept_id = d.dept_id;

-- List first name, last name, and sex of each employee whose first name is 
-- Hercules and whose last name begins with the letter B

SELECT 
    first_name AS "First Name",
    last_name AS "Last Name",
    sex AS "Sex"
FROM 
    "Employees"
WHERE 
    first_name = 'Hercules' AND last_name LIKE 'B%';

-- List each employee in the Sales department, including
-- their employee number, last name, and first name

SELECT 
    e.emp_id AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM 
    "Dept_Employees" de
JOIN 
    "Employees" e ON de.emp_id = e.emp_id
JOIN 
    "Departments" d ON de.dept_id = d.dept_id
WHERE 
    d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name

SELECT 
    e.emp_id AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    d.dept_name AS "Department Name"
FROM 
    "Dept_Employees" de
JOIN 
    "Employees" e ON de.emp_id = e.emp_id
JOIN 
    "Departments" d ON de.dept_id = d.dept_id
WHERE 
    d.dept_name IN ('Sales', 'Development');

-- List the frequency counts, in descending order, of all the
-- employee last names (that is, how many employees share each last name)

SELECT 
    last_name AS "Last Name",
    COUNT(*) AS "Frequency"
FROM 
    "Employees"
GROUP BY 
    last_name
ORDER BY 
    "Frequency" DESC;
