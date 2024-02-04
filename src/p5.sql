/*
write an SQL query to calculate the average salary for each department.
*/
SELECT department, AVG(salary)
FROM employees
GROUP BY department


/*
    Bonus: 
    Modify the query to calculate the highest salary for each department and retrieve the department name, 
    highest salary, and the employee(s) with that salary.
*/
 
SELECT department, MAX(salary) AS highest_salary, name AS employee_name
FROM employees
GROUP BY department;
