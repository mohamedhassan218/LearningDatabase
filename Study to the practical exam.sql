create database practicalExamDB;
show databases;

use practicalExamDB;

create table department
(
ID char(4) primary key,
depName varchar(30) not null
);
 -- use this statement to drop the table
 -- drop table student;

create table student 
(
studentID int ,
studentName varchar(25) not null,
major varchar(15) unique,
primary key(studentID)
);

describe student;  -- to describe the table

-- Alter commands
alter table student add depID char(4);   -- change the domain of the attribute
alter table student add constraint foriegnkeyConstraints foreign key(depID) references department.ID;  -- add referential constraints
alter table student modify depID char(4) not null;  -- modify the constraints of the depID column
alter table student add gpa decimal(3, 2);          -- add column
alter table student drop column gpa;                -- drop column
alter table student modify studentName varchar(50); -- modify constraints in column
alter table student add constraint majorConstraints unique (major); -- add constraints to a table
alter table student rename to Student;  -- rename a table 

truncate table student;   -- remove all data from the table

-- INSERT VALUES:
insert into department(ID, depName) values('IT', '1111'), ('1212', 'IS'), ('1313', 'Cs'), ('1414', 'Mm');
insert into student values(1, 'Jack', 'Biology', '1212');
insert into student values(2, 'Kate', 'Socilogy', '1111');
insert into student values(3, 'Claire', 'Chemistry', '1313');
insert into student values(4, 'Jack', 'Mathmatics', '1414');
insert into student values(5, 'Mike', 'CS', '1212');
insert into student values(6, 'Mo Salah', 'PM', '5555');
insert into department values('1111', 'IT');

-- UPDATE AND DELETE COMMANDS:
update department set ID = '1110', depName = 'Information Technology' where(ID = '1111');    -- update the data in the table
update student set studentName = 'mo salah' where(studentID = 5);
delete from department where(ID = 'IT');   -- delete the column that fulfills the where condition

-- SELECT COMMANDS:
select studentName, depName from student, department where(student.depID = department.ID);
select * from student, department;
select * from department;
select studentName, depID from student inner join  department  on (student.depID = department.ID);  -- inner join (select matching rows in the two tables)
select studentName, depID from student left join  department  on (student.depID = department.ID);   -- left join (select all rows from left table and only matcing from right table)

