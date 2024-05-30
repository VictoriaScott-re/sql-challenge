# SQL Challenge

As a new data engineer at Pewlett Hackard, my first major task is to conduct a research project focused on employees hired during the 1980s and 1990s. To accomplish this, I will work on three main components: data modeling, data engineering, and data analysis.

## Data Modeling

To begin, I inspected the provided CSV files and sketched an Entity Relationship Diagram (ERD) representing the tables needed to store the data.
- [QuickDBD_Image](images/QuickDBD.png)
- [departments csv file](EmployeesSQL/departments.csv)
- [department employee csv file](EmployeesSQL/dept_emp.csv)
- [department manager csv file](EmployeesSQL/dept_manager.csv)
- [employees csv file](EmployeesSQL/employees.csv)
- [salaries csv file](EmployeesSQL/salaries.csv)
- [titles csv file](EmployeesSQL/titles.csv) 

## Data Engineering

Next, I created table schemas for each of the six CSV files based on the information provided. The table schemas included specifications for data types, primary keys, foreign keys, and other constraints. Additionally, I ensured that primary keys are unique and created composite keys when necessary. The tables were created in the correct order to handle foreign keys, and each CSV file was imported into its corresponding SQL table. 
- [Table schemas](querytool/table_schemata.sql)

## Data Analysis

Once the data was properly structured in the database, I performed various data analysis tasks. 
- [Queries](querytool/queries.sql)
- Images:
1. [List the employee number, last name, first name, sex, and salary of each employee.](images/emp_num_lst_frst_sx_sal.png)
2. [List the first name, last name, and hire date for the employees who were hired in 1986.](images/emp_frst_lst_hd.png)
3. [List the manager of each department along with their department number, department name, employee number, last name, and first name](images/mgr_deptid_dptnm_empid_lst_frst.png)
4. [List the department number for each employee along with their employee number, last name, first name, and department name.](images/dptid_empid_frst_lst_dptname.png)
5. [List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.](images/herc_b.png)
6. [List each employee in the Sales department, including their employee number, last name, and first name.](images/emp_frst_lst_hd.png)
7. [List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.](images/sales_dev_dpt_empid_lst_frst_dptname.png)
8. [List the frequency counts, in descending order, of all the employee last names (i.e., how many employees share each last name).](images/mgr_deptid_dptnm_empid_lst_frst.png)




