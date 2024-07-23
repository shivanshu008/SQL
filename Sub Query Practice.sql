use data_analysis_online2;
select * from employee;
 
-- Sub Query :- Query inside the Query

-- Question - Employee Salary whose salary is greater than average salary
select * from employee where salary > ( select avg(salary) from employee); 

-- Question - List the name and department of employee who work in the same department as that of Jane Smith
select emp_name, department from employee where department=(select department from employee where emp_name = "Jane Smith");

-- Question - Find the employee who have the same manager as Jane Smith
select emp_name, manager_name from employee where manager_name = (select manager_name from employee where emp_name = "Jane Smith");

-- Question - List the employee whose salary is higher than the average salary of thier respective department
select emp_name, department, salary from employee where salary > (select avg(salary) from employee as e where e.department = employee.department);

-- List the name and salaries of employee whose salary with the top 3 salary of entire company
select emp_name, salary from employee where salary >= (select salary from employee Order by salary desc limit 1 offset 2);





