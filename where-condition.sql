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
 

