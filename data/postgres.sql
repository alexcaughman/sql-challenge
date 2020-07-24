-- Part 1

SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex,
	salaries.salary
FROM employees
inner JOIN salaries on
employees.emp_no = salaries.emp_no;

-- Part 2

Select employees.last_name,
	employees.first_name,
	employees.hire_date
From employees
where hire_date > '12/31/1985' and hire_date < '01/01/1987'

-- Part 3

SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name,
	dept_mgr.dept_no,
	departments.dept_name
FROM employees
inner JOIN dept_mgr on
employees.emp_no = dept_mgr.emp_no
inner join departments on
dept_mgr.dept_no = departments.dept_no;

-- Part 4

SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name,
	dept_emp.dept_no,
	departments.dept_name
FROM employees
inner JOIN dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no;

-- Part 5

Select employees.last_name,
	employees.first_name,
	employees.sex
From employees
where last_name like 'B%' and first_name = 'Hercules'

-- Part 6

SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name,
	departments.dept_name
FROM employees
inner JOIN dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

-- Part 7

SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name,
	departments.dept_name
FROM employees
inner JOIN dept_emp on
employees.emp_no = dept_emp.emp_no
inner join departments on
dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

-- Part 8

select employees.last_name,
count(employees.last_name) as name_count
from employees group by last_name
order by name_count desc;