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


use company;
select *from employee;

Create view  age_table as 
Select *from employee where age>25;

select *from employee;
-- Insert the values-- 
Insert INTO employee(emp_id,emp_name,age,salary) values
(2,'Rizwan',30,55000.90) ;

Insert INTO employee(emp_id,emp_name,age,salary) values
(3,'Arzan',30,55000.90) ;
Select *from employee;

-- Updatable Views 
-- Rule no-1 Single table
-- Rule no-2 subgroup groupby, distinct

update employee set name='Zuheb khan' where age='30';
Select *from employee;

-- Delete data-- 
delete from employee where name='Rizwan';
Select *from employee;

-- with check option
Create view age_status as
Select *from employee where age=25
with check option;

Insert INTO age_status(emp_id,emp_name,age,salary) values
(4,'Aazil',10,55000.90) ;

Select *from age_status;





