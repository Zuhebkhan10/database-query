-- Windows function 
-- what is window function.why are we use the window function.
-- Window function used to analyzed the row while keeping full details.
-- In window function we are perform runnig total,ranking percentiles,average etc.
-- Do a calculation over a window of rows while keeping all rows visible.”

use data_analyst;

-- Create a table on sales
create table sales(
Id int primary key,
Emp_name varchar(45),
Department varchar(45),
Sale_amount Decimal(10,2),
Sale_Date Date
);

Insert into sales(Id,Emp_name,Department,Sale_amount,Sale_Date) values
(1, 'Amit', 'Electronics', 45000, '2024-01-01'),
(2, 'Neha', 'Electronics', 52000, '2024-01-02'),
(3, 'Ravi', 'Electronics', 30000, '2024-01-03'),
(4, 'Pooja', 'Electronics', 60000, '2024-01-04'),
(5, 'Karan', 'Electronics', 48000, '2024-01-05'),
(6, 'Suresh', 'Clothing', 25000, '2024-01-01'),
(7, 'Anita', 'Clothing', 32000, '2024-01-02'),
(8, 'Rahul', 'Clothing', 28000, '2024-01-03'),
(9, 'Meena', 'Clothing', 35000, '2024-01-04'),
(10, 'Vikas', 'Clothing', 40000, '2024-01-05'),
(11, 'Arjun', 'Grocery', 15000, '2024-01-01'),
(12, 'Kavya', 'Grocery', 18000, '2024-01-02'),
(13, 'Manoj', 'Grocery', 22000, '2024-01-03'),
(14, 'Divya', 'Grocery', 20000, '2024-01-04'),
(15, 'Sanjay', 'Grocery', 26000, '2024-01-05'),
(16, 'Nikhil', 'Furniture', 70000, '2024-01-01'),
(17, 'Priya', 'Furniture', 82000, '2024-01-02'),
(18, 'Ramesh', 'Furniture', 65000, '2024-01-03'),
(19, 'Sneha', 'Furniture', 90000, '2024-01-04'),
(20, 'Deepak', 'Furniture', 75000, '2024-01-05');

Select *from sales;

-- please give the windows function name
-- syntax :: windows_function() Over(Partition by cate_col_name order by col_name)
-- Row_number() Assign for count of number to each category.

-- get the number of rows for sales table based on date and get the records of sales amount. 
Select Emp_name,sale_amount,sale_date,
row_number() 
Over(partition by Emp_name order by Sale_date) as row_num from sales;


-- 2.Rank() & Dense_rank() rank the rows
Select emp_name, Sale_amount,sale_date,
rank()
Over (Partition by emp_name order by sale_amount desc)as Rank_row from sales;

-- Used to rank rows without removing any row.
Select emp_name, Sale_amount,
Dense_rank()
Over (Partition by emp_name order by sale_amount desc)as Rank_row from sales;

-- What is difference between rank() and dense_rank()


-- 3.Sum(): Runnig table
-- get the sum of thwe sales amount from each employee from sales tables.
Select emp_name , sale_amount, sale_date,
Sum(Sale_amount)
Over (partition by emp_name order by sale_date)as running_total from sales;


-- 4.Average(): Runing average
Select emp_name , sale_amount, sale_date,
Avg(Sale_amount)
Over (partition by emp_name order by sale_date)as running_total from sales;

-- 5.LAG() & LEAD():Is used to compare the previous and next rows in the table.
#Get the record of previous sales amount from sales tables.
Select emp_name,sale_amount ,sale_date,
Lag(Sale_amount)
Over(partition by Department order by sale_date)as previous_sale from sales;

#get the record od next sale_amount from the sales table
Select emp_name,sale_amount ,sale_date,
Lead(Sale_amount)
Over(partition by Department order by sale_date)as Next_sale from sales;

-- 6.First_value():
Select emp_name,sale_amount ,sale_date,
first_value(Sale_amount)
Over(partition by Department order by sale_date)as Frist_values from sales;

-- 7.Ntile(): splits the data into "n" parts.
Select emp_name,sale_amount ,sale_date,
Ntile(2)
Over(partition by Department order by sale_date)as Frist_values from sales;







