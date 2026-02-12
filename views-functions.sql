use data_analyst;
Select *from  customer;
Select *from employee_info;
Select *from employees;

Select department, years, Country,
CASE 
	when years<=5 then 'Fresher'
    Else 'Experienced'
End as Status
from employees;

-- Functions:
-- A function in MySQL is a program that performs a specific task and returns a single value.
-- there are two types function.-- 
# Built-in Functions
-- NOW() → Current date & time
-- COUNT() → Counts rows
-- SUM() → Adds values
-- AVG() → Average
-- UPPER() → Convert to uppercase




#User-Defined Functions (UDF)
#Delimiter $$:
-- This is set the delimiter  to '$$' instead of the default';'

#Create function
-- This creates a new function called 'addition 'that takes two integer parameter (a and b)

#Begin
-- This is the start of block of code that defines what the function does.

#Return  a+b:
-- This is the actual logic of the function .It adds the two parametre (a and b) together and return  the result.

#END $$
-- This marks the end of the function definition block.


-- Creating a function to add two parameter a and b
#Simple delimiter sum of two numbers
Delimiter $$
Create function add_sum(a Int, b Int) returns Int
begin
	return a+b;
End$$
Delimiter ;
#call the addition function
Select  add_sum(12,22);

#Check the age for using delimiter
DELIMITER $$
CREATE Function GetDiscount(person_age INT)
Returns Int
deterministic
BEGIN
    return Case
        When person_age<=18 THEN 20
        When person_age>= 60 THEN 40
        Else 0
    End;
End $$
DELIMITER ;
-- Call the function
Select GetDiscount(10);
Select GetDiscount(61);
Select GetDiscount(41);





