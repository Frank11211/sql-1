/*
    Question :
    write an SQL query to calculate the total quantity sold and the average quantity sold per order.
*/
SELECT 
    order_id,
    SUM(quantity) AS total_quantity_sold_per_order,
    AVG(quantity) AS average_quantity_sold_per_order
FROM 
    sales
GROUP BY 
    order_id;


/*
    Bonus: 
    Modify the query to include the total sales amount and average sales amount per order.
*/

SELECT 
    sales.order_id,
    SUM(sales.quantity * inventories.price) AS total_sales_amount,
    AVG(sales.quantity * inventories.price) AS average_sales_amount_per_order
FROM 
    sales
LEFT JOIN 
    inventories
ON 
    sales.product_id = inventories.product_id
GROUP BY 
    sales.order_id;

