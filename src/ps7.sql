
/*
  Question :
  write an SQL statement to delete a specific customer. You can specify the customer to delete by their customer_id.
*/
DELETE FROM customer WHERE customer_id = /* customer delete input*/


/*
  Bonus: 
  Modify the query to delete any related records associated with the customer being deleted to maintain data integrity.
*/
 
START TRANSACTION;

DELETE FROM customers WHERE customer_id = /*customer_id*/;
DELETE FROM orders WHERE customer_id = /*customer_id*/;
DELETE FROM other_table WHERE customer_id = /*customer_id*/;

COMMIT;