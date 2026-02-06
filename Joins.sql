-- what is Joins
# A JOIN is used to combine rows from two or more tables based on a related column between them.
# (for example faculty_data and student_data)
-- INNER → only matches
-- LEFT → all left + matches
-- RIGHT → all right + matches
-- FULL → everything
-- CROSS → all combinations
-- SELF → table joins itself

create table employee(
emp_id int primary key,
emp_name varchar(45),
dept_id int,
address varchar(45),
contact bigint
);

INSERT INTO employee (emp_id, emp_name, dept_id, address, contact) VALUES
(1, 'Ravi Kumar', 1, 'Chennai', 9876543210),
(2, 'Anita Sharma', 2, 'Bangalore', 9123456789),
(3, 'Rahul Mehta', 2, 'Mumbai', 9988776655),
(4, 'Priya Singh', 3, 'Delhi', 9012345678),
(5, 'Arjun Patel', 2, 'Ahmedabad', 8899001122),
(6, 'Neha Verma', 4, 'Pune', 9090909090),
(7, 'Vikram Rao', 1, 'Hyderabad', 9887766554),
(8, 'Sneha Iyer', 3, 'Chennai', 9876501234),
(9, 'Amit Shah', 5, 'Surat', 9876540987),
(10, 'Kavya Nair', 14, 'Kochi', 9123409876),
(11, 'Suresh Reddy', 21, 'Hyderabad', 9988123456),
(12, 'Pooja Malhotra', 13, 'Delhi', 9876112233),
(13, 'Nitin Joshi', 122, 'Nagpur', 9123987654),
(14, 'Divya Jain', 44, 'Jaipur', 9098765432),
(15, 'Manoj Yadav', 31, 'Lucknow', 9988771122),
(16, 'Ritika Kapoor', 33, 'Noida', 9011223344),
(17, 'Sanjay Gupta', 42, 'Kanpur', 9877001122),
(18, 'Anjali Das', 14, 'Kolkata', 9122113344),
(19, 'Deepak Mishra', 41, 'Bhopal', 9988997766),
(20, 'Meena Roy', 33, 'Patna', 9099887766),
(21, 'Rohit Khanna', 11, 'Gurgaon', 9876123498),
(22, 'Shalini Saxena', 19, 'Indore', 9123445566),
(23, 'Karan Malhotra', 18, 'Amritsar', 9988001122),
(24, 'Nisha Arora', 17, 'Faridabad', 9099112233),
(25, 'Ajay Pandey', 20, 'Allahabad', 9877334455),
(26, 'Preeti Chawla', 24, 'Chandigarh', 9123667788),
(27, 'Ashok Verma', 41, 'Meerut', 9988556677),
(28, 'Renu Kumari', 23, 'Ranchi', 9099445566),
(29, 'Mohit Bansal', 22, 'Panipat', 9877889900),
(30, 'Alok Srivastava', 34, 'Varanasi', 9876110099);


Create table departments(
dept_id int primary key,
dept_name varchar(45),
location varchar(45)
);
INSERT INTO departments (dept_id, dept_name, location) VALUES
(1, 'HR', 'Chennai'),
(2, 'Sales', 'Bangalore'),
(3, 'IT', 'Hyderabad'),
(4, 'Finance', 'Mumbai'),
(5, 'Marketing', 'Delhi'),
(6, 'Admin', 'Pune'),
(7, 'Operations', 'Kolkata'),
(8, 'Support', 'Noida'),
(9, 'Training', 'Gurgaon'),
(10, 'R&D', 'Bangalore'),
(11, 'HR East', 'Patna'),
(12, 'HR West', 'Ahmedabad'),
(13, 'HR North', 'Chandigarh'),
(14, 'HR South', 'Coimbatore'),
(15, 'Sales East', 'Kolkata'),
(16, 'Sales West', 'Mumbai'),
(17, 'Sales North', 'Delhi'),
(18, 'Sales South', 'Chennai'),
(19, 'IT Infra', 'Hyderabad'),
(20, 'IT Support', 'Bangalore'),
(21, 'IT Security', 'Pune'),
(22, 'Finance Audit', 'Mumbai'),
(23, 'Finance Payroll', 'Chennai'),
(24, 'Finance Tax', 'Delhi'),
(25, 'Marketing Digital', 'Bangalore'),
(26, 'Marketing Content', 'Noida'),
(27, 'Operations Plant', 'Nagpur'),
(28, 'Operations Logistics', 'Indore'),
(29, 'Customer Care', 'Jaipur'),
(30, 'Customer Success', 'Udaipur'),
(31, 'Training Tech', 'Hyderabad'),
(32, 'Training SoftSkills', 'Trichy'),
(33, 'R&D AI', 'Bangalore'),
(34, 'R&D ML', 'Hyderabad'),
(35, 'R&D Data', 'Pune'),
(36, 'Admin Facilities', 'Chennai'),
(37, 'Admin Legal', 'Delhi'),
(38, 'Support L1', 'Coimbatore'),
(39, 'Support L2', 'Madurai'),
(40, 'Support L3', 'Trivandrum'),
(41, 'Quality Assurance', 'Mysore'),
(42, 'Compliance', 'Delhi'),
(43, 'Procurement', 'Vizag'),
(44, 'Vendor Management', 'Surat'),
(45, 'Business Analysis', 'Bangalore'),
(46, 'Product Management', 'Hyderabad'),
(47, 'Strategy', 'Mumbai'),
(48, 'Innovation', 'Bangalore'),
(49, 'Corporate Affairs', 'Delhi'),
(50, 'Risk Management', 'Mumbai');

Select *from departments;
Select *from employee;
#1. INNER JOIN
-- Returns only the records that have matching values in both tables.
Select e.emp_name , e.address, d.dept_name, d.location from employee e
Inner join departments d
On  e.dept_id=d.dept_Id;
-- Where condition for using Inner joins 
Select e.emp_name , e.address, d.dept_name, d.location from employee e
Inner join departments d
On  e.dept_id=d.dept_Id
Where e.emp_name="Anita Sharma" and d.location between 'Bangalore'and'Pune';

#2.LEFT JOIN (LEFT OUTER JOIN)
-- Returns all rows from the left table matching rows from right table.
Select e.emp_name, e.address, e.contact, d.dept_name from employee e
Left join departments d
ON e.dept_id=d.dept_id;

#3.RIGHT JOIN (RIGHT OUTER JOIN-- )
-- Returns all rows from the right table + matching rows from left table
Select d.dept_id, d.dept_name, d.location, e.emp_name,e.address from employee e
Right join Departments d
ON d.dept_id=e.dept_id;

#4.FULL JOIN (Not directly supported in MySQL)
-- Returns all rows from both tables
Select e.emp_name, e.address, e.contact, d.dept_name from employee e
Left join departments d
ON e.dept_id=d.dept_id
UNION
Select e.emp_name, e.address, e.contact,d.dept_name from employee e
Right join Departments d
ON d.dept_id=e.dept_id;

#5.CROSS JOIN
-- Returns all possible combinations (Cartesian product)
Select *from employee
Cross join departments;

#6.SELF JOIN-- 
-- Join a table with itself useful for hierarchical data or comparing row within same table.
Select e1.emp_id,e1.emp_name,d1.dept_name as Department from employee e1, 
departments d1 where e1.address=d1.location;











