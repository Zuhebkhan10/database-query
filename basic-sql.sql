-- What is schemas?
-- schemas are the blue print of database

-- what is SQL?
-- structure query language is a programming language used to communicate with the database
-- what are all functions we can do in SQL?
-- CRUD operations
-- what is RDBMS?
-- Relation database management system is where we can store the data in organized format
-- in the form of rows and columns
-- what is database?
-- The place where we can store our data
-- Data :- is a collection of discrete(a fixed whole number) or continous values
-- continuous values means infinte number with in arange of numbers
-- when we communicating with the database we use different types of database languages
-- DDL -- Data defination language  -- CREATE,ALTER,DROP,TRUNCATE
-- DML -- Data Manipulation Language -- INSERT,UPDATE,DELETE
-- DQL -- Data query language -- SELECT
-- DCL -- Data Control language -- GRANT, REVOKE
-- TCL -- Transaction Control Language -- COMMIT,ROLLBACK, SAVEPOINT 

-- Q)create a database name "data_analyst"
create database data_analyst;
use data_analyst;

-- Q)create a table students with attributes
create table students(
std_id int,
first_name varchar(25),
last_name varchar(25),
address varchar(25),
contact int
);

-- Q) Insert the data into table students
insert into students(std_id,first_name,last_name,address,contact) values
(101,"Fahad","khan","Begumpet",89098654),
(102,"Zuheb","khan","Ameerpet",78905688),
(103,"sarim","pathan","Hitech",78978567),
(104,"Shahzain","Ansari","Nampally",78864677);

-- Check the data of students
SELECT * FROM students;

insert into students(std_id,first_name,last_name,address,contact) values
(110,"Rehan","Ansari","Durghamcheruv",45678909871);
-- note:- INT can take the digits upto 9
-- so if there more then 9 digits use the Bigint as a data type

-- DROP DATABASE data_analyst;
-- recreate the database
-- Q)create a database name "data_analyst"

-- delete the entire table name is students;
-- drop table students;
-- q)delete only the data from table and return empty table

-- truncate table students;
-- Q)what is difference between drop and truncate?
-- drop remove entire data along with tablle and database
-- truncate remove data from table and returns empty table















