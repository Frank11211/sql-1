/*
    Question :
    write an SQL query to retrieve the customer names, order dates, and total amounts 
    for all orders placed by customers from the city 'New York'.
*/
SELECT customers.customer_name , orders.order_date, orders.total_amount 
FROM customers 
LEFT JOIN orders on customers.customer_id = orders.customer_id 
where city = "New York";


/*
    Bonus: \
    Modify the query to include the average total amount per customer for orders placed in the city 'New York'.
*/

SELECT customers.customer_name , orders.order_date, AVG(orders.total_amount) 
FROM customers 
LEFT JOIN orders on customers.customer_id = orders.customer_id 
where city = "New York";
