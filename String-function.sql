Create table customer(
cust_id int primary key,
cust_name varchar(25),
company varchar(24),
address varchar(25),
contact bigint
);

-- Rename the column name is address to "Country"
Alter table customer
rename column address to country;

insert into customer(cust_id,cust_name,company,address,contact) values
(101,"Mike",'Amazon','USA',98764345678),
(102,'Shahzain','Paytm','India',9876456721),
(103,'Arzan','Oneplus','China',8889876567);

Select *from customer;
-- print the customer name is Uppercase
Select cust_name,Ucase(cust_name) as uppercase from customer;
-- print the customer name is lowercase
Select company, Lcase(company) as lowercase from customer;

-- merge or concatenate cust_name and company name as full name is customer table.
Select cust_name,country,concat(cust_name ,",",country)as names from customer;

