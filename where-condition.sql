-- create a table employee with emp_id emp_name and salary,compnay_name
create table employee(
emp_id int primary key,
emp_name varchar(20),
company_name varchar(20),
salary int
);

-- Insert the data into table
insert into employee(emp_id,emp_name,company_name,salary) values
(101,"Arzan","TCS",78021),
(102,"Arham","Deloitte",90549),
(103,"Sarim","Tech mahindra",100000),
(104,"Aneef","NDevice",75000),
(105,"Aazil","Amazon",35000);

-- check the data of students
Select * from employee;

-- Q)print the first row from the employee table
select *from employee where emp_id=101;

 -- Q)get the records of  who employee recieves salary greater then or equals to 80000
 select *from employee
 where salary>=80000;
 
  -- Q)get the records of  who employee recieves salary less then or equals to 80000
select *from employee
where salary<=80000;

-- get the records of student name "Sarim"
select *from employee
 where emp_name="Sarim";
 
 -- Realtional or comparision operators --> =,!=,>,<>=,<=
 -- get the records of employee whose salary equals to 80000
 select *from employee
 where salary=80000;
 
 -- get the records of the employee whose salary between 70000 and 90000.
 select *from employee
 where salary>=70000 and salary<=90000;
 
 
 -- Use the between operator
 select *from employee
 where salary between 90000 and 100000;
 
 SELECT * FROM employee;

-- select *from students;
-- Get the records of teg student whose nam e statrt with letter "A"
-- Use the "LIKE" logical operator and to mmatc with the stirng use the "%"
Select *from employee where emp_name like "A%";

-- Don't know first 2 letters and next letter is "e" get the records of the employee for the unknown letter use 
Select *from employee where emp_name like "__e%";

-- Get the record of emp_id is 101,102,106-- 
-- In a logical operator used to check multiple records at a time. 
Select *from employee where emp_id In(101,102,106);
 
-- get all the records of the employee expect 101,102,105
select * from employee where emp_id Not in (101,104,105);

-- Add a column "city" to the table employee-- 
Alter table employee add column city varchar(25);
Select *from employee;

-- how to update the null values
-- To update the null we use DML command--> Update

Set Sql_safe_updates=0;
-- Before the updating the null vaues in the table disable security safe update.
update employee set city="Pune"; 
select *from employee;


-- Enable secirty safe updates
set Sql_safe_update=1;

Delete from employee where emp_id=108;
-- Note:if we want add a new column, remove a columns and remove a record.
-- We need to disable the security safe updates

-- Transaction are nothing nut set of quries
-- TCL commands control transactions by committing or rolling back changes in a database.
Start Transaction ;
Alter table employee_info drop column city;
Select *from employee_info;
Rollback;

Select *from employee_info;
Start transaction;
Delete from employee_info where emp_id=105;
Rollback;
Select *from employee_info;
commit;

-- how to rename the table name use mysql
Rename table emmploye_info to employee_info;



