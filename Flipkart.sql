-- Write a query to fetch all columns for all employee
Select *from users;

use flipkart;

-- Fetch the  unique product from the order table
select *from order_items; 
Select distinct order_id from order_items;

-- fetch all details of users belong who to the 'begumpet' department
-- Select *from users where address="begumpet";

	-- fetch the employee names add thier address with columns aliass 'Name' and "phone" 
	 -- (Concate function)
	 Select concat(name,' ',address )as Name,
	 Coalesce (Begumpet(address,0),'Jaganpur')as address from users;
 
 
 

 