create table student (
id int primary key, 
course varchar(10),
location varchar(10),
batch int,
marks int
);

INSERT INTO student VALUES
(1,'Mtech','Bangalore',1,70),
(2,'Mtech','Bangalore',1,85),
(3,'Mtech','Bangalore',1,71),
(4,'Mtech','Bangalore',1,64),
(5,'Mtech','Bangalore',2,55),
(6,'Mtech','Bangalore',2,74),
(7,'Mtech','Bangalore',2,84),
(8,'Mtech','Bangalore',2,63),
(9,'Mtech','Chennai',1,50),
(10,'Mtech','Chennai',1,98),
(11,'Mtech','Chennai',1,67),
(12,'Mtech','Chennai',1,20),
(13,'Dse','Bangalore',1,64),
(14,'Dse','Bangalore',1,88),
(15,'Dse','Bangalore',1,79),
(16,'Dse','Bangalore',1,69),
(17,'Dse','Chennai',1,80),
(18,'Dse','Chennai',1,61),
(19,'Dse','Chennai',1,39),
(20,'Dse','Chennai',1,48),
(21,'Dse','Chennai',1,96),
(22,'Dse','Chennai',2,78),
(23,'Dse','Chennai',2,69),
(24,'Dse','Chennai',2,86),
(25,'Dse','Chennai',2,93),
(26,'Dse','Chennai',2,66),
(27,'Dse','Chennai',1,80),
(28,'Mtech','Bangalore',1,85);

Select *from student;

-- 1. List the average marks of dse student
Select course,Avg(marks)as average_marks
from student
group by course 
order by avg(marks) Desc limit 1;

-- List the average marks of dse students for each location
Select course,location,Avg(marks)as average_marks
from student
where course="dse"
group by location,course;

-- 3. list the average marks of students in bangalore for different courses
Select course,location,Avg(marks)as average_marks
from student
where location="Bangalore"
group by course;

-- 4. List the average marks of dse students for each location,batch
Select course,batch,location,Avg(marks)as average_marks
from student
where course='dse'
group by location,batch
order by average_marks desc;

-- 5. list the highest mark in each course, location wise
Select course,location,Max(marks)as highest_marks
from student
group by course,location
order by highest_marks desc;

-- 6.list the highest mark in each course, location,batch wise
Select course,location,batch,Max(marks)as highest_marks
from student
group by course,location,batch
order by highest_marks desc;

-- 7.List the highest mark in each location
Select location ,Max(marks) as highest_marks
from student
group by location
order by highest_marks desc;

-- 8. List students who have got more than 75 marks
Select course,location ,Max(marks) as highest_marks
from student
group by course,location
having max(marks)>75
order by highest_marks desc;

-- 9 List the number of mtech student in Chennai
Select course,location ,count(*) as total_students
from student
where course='mtech' and location='chennai';

-- 10. List students who have got less than 40 in Chennai
Select * from student
where location='Chennai' and marks<40;

-- 11. List the top 3 performers in DSE and Mtech
(Select *from student
where course=('dse') 
order by marks desc limit 3)
union all
(Select *from student
where course='mtech' 
order by marks desc limit 3);






