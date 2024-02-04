/*
    Question :
    write an SQL query to retrieve the names and positions of all employees with a salary greater than $50,000.
*/
SELECT name, position 
from employees 
where salary >= 50000


/*
    Bonus: 
    Modify the query to retrieve the names, positions, and salaries of the top three highest-paid employees.
*/
 
select name, position, salary
from employees
order by salary DESC
limit 3;