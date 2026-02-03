Create table products(
product_id int primary key,
product_type_id int references product_types(type_id),
name varchar(25),
description varchar(45),
price decimal(5,2)
);

INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (1, 1, 'Modern Science', 'A description of modern 
science', 19.95); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (2, 1, 'Chemistry', 'Introduction to Chemistry', 30.00); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (3, 2, 'Supernova', 'A star explodes', 25.99); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (4, 2, 'Tank War', 'Action movie about a future war', 
13.95); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (5, 2, 'Z Files', 'Series on mysterious activities', 
49.99); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (6, 2, '2412: The Return', 'Aliens return', 14.95); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (7, 3, 'Space Force 9', 'Adventures of heroes', 13.49); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (8, 3, 'From Another Planet', 'Alien from another planet 
lands on Earth', 12.99); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (9, 4, 'Classical Music', 'The best classical music', 
10.99); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (10, 4, 'Pop 3', 'The best popular music', 15.99); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (11, 4, 'Creative Yell', 'Debut album', 14.99); 
INSERT INTO products (  product_id, product_type_id, name, description, 
price) VALUES (12, NULL, 'My Front Line', 'Their greatest hits', 
13.49); 

Select *from products;

-- Aggregate function;--Perform calculation on multiple rows to get a single summary value.
-- there are five type of aggregate function. SUM,AVG,MIN,MAX,COUNT
-- Get the minimum price from products table
Select Min(price) from products;
-- Get the record of product _type_id of min prices from priduc tables 
Select product_type_id,Min(price) from products
Group by product_type_id;

-- Get the records of product_type_id with min proces from product table without null values.
Select product_type_id, min(price) from products
where product_type_id is not null
group by product_type_id;

-- get the record the product_type_id from avg products.
Select product_type_id,AVG(price)from products
where product_type_id is not null
group by product_type_id;

-- Get the record of top higest product_type where is avg price is greater than 20
Select product_type_id ,AVg(price) from products
where  product_type_id is not null
group by product_type_id
having avg(price)>20;

-- print the above query in descending order 
Select product_type_id ,AVg(price) from products
where  product_type_id is not null
group by product_type_id
having avg(price)>20
order by avg(price)Desc;

-- get the highest avg price of a product_type_id from products table
Select product_type_id ,AVg(price) from products
where  product_type_id is not null
group by product_type_id
having avg(price)>20
order by avg(price)Desc limit 1;

-- get the highest maximum price of product types id without null values from products tables. 
Select product_type_id ,Max(price) from products
where  product_type_id is not null
group by product_type_id
having Max(price)>20
order by Max(price)Desc limit 1;


-- what is the format of applying the aggregate function.
-- Aggregate function format--> Select, Agg_fucn,from, where group by, having, order by,Limit

-- get the highest sum of product_type_id
Select product_type_id ,Sum(price) from products
where  product_type_id is not null
group by product_type_id
having sum(price)
order by sum(price) desc limit 1;



