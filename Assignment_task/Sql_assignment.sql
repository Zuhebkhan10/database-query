Create database sql_assignment;
use sql_assignment;

create table customer(
cust_id int primary key,
first_name varchar(25),
last_name varchar(25),
DOB date,
contact_no varchar(12)
);

Insert into customer(cust_id,first_name,last_name,DOB,contact_no) values
(1,'John','Brown','1965-01-01','800-555-1211'),
(2,'Cynthia','Green','1968-02-05','800-555-1212'),
(3,'Steve','White','1971-03-16','800-555-1213'),
(4,'Gail','Black',NULL,'800-555-1214'),
(5,'Doreen','Blue','1970-05-20',NULL);

Select *from customer;

-- Get the records of customer that last name starts with 'Bl'
Select *from customer where last_name LIKE "Bl%";

 -- Get the records of customer  whose first and last name contains "ee"
 Select *from customer where first_name like "__e%";
 
 -- Get the records of customer  whose phone number ends with 12
 Select *from customer where contact_no like "%12";
 
 -- Get the records of customer who doesnot have phone number
 Select *from customer where contact_no Is Null;
 
 -- Get the records of customer who don't have date of birth
 Select *from customer where Dob is null;
 
 -- merge first name and last name as full name from customer table
 select first_name ,last_name, concat(first_name," ",last_name) as full_name from customer;