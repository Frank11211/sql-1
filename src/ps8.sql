
/*
 Question Explanation:-
 With reference to the tables created in Problem 1, analyze the query and propose an index or indexes that can significantly improve its performance.
*/

CREATE INDEX idx_department_salary ON employees (department, salary);


