use ecommerce_db;

Select * from products;
Select *from payments;
SELECT * FROM users;
SELECT * FROM order_items;
Select *from orders;

-- show the view tables 
show full  tables where table_type='VIEW';

Create View highest_price as 
Select o.status, o.created_at, o.total_price from orders o
Where o.total_price=(
Select Max(r.total_price)
from orders r
Where r.user_id=o.user_id)
Order by Max(r.total_price) desc limit 1;

-- find employees who have the higest salary in their department.--
Select *from  highest_price
 where status='pending';

Select *from  highest_price where total_price  between '300' and '900';


-- create the new user_id password in mysql-- 
Create user 'SerDunccun'@'localhost' Identified by 'SerEgg';

Grant Select On sample.* To 'SerDunccun'@'localhost';

Grant Select On sample.highest_price to 'SerDunccan'@'localhost';


#replace the views;
Create or replace View highest_price as 
Select o.status, o.user_id, o.total_price from orders o
Where o.total_price=(
Select Max(r.total_price)
from orders r
Where r.user_id=o.user_id)
Order by Max(r.total_price) desc limit 1;


use college_dataset;
select *from student_data;

Create view  age_table as 
Select *from student_data where age>20 ;

Select *from age_table;


