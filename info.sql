create database students;  // for create database

drop database students    // for drop database

show databases;   // for show databases

use students;  // for use database

// create table
create table student (
  id int primary key,
  name : varchar(50),
  age int not null
);

// insert single values
insert into student values (1,"bhautik",19);
insert into student values (2,"bhautik2",20);

select * from student;  // get all table

show tables; // for show tables

drop table student;    // for drop table 

// insert multipale values
insert into student (id,name,age)
values (101,"karan",34),
       (102,"arjun",24),
       (1103."mayur",56);


// aggregate functions 

count();
avg();
sum();
min();
max();


// table related query 
// add column
alter table student add column age int

// modify column
alter table student modify age varchar(2);

// change column 
alter table student change age stu_age int;

// drop column
alter table student drop column stu_age;

// rename table
alter table student rename to stu;


// for delete table data 
truncate table student


// Join query
- inner join
- left jon 
- right join 
- full join

// inner join 
select * from student 
inner join course
on student.student_id = course.student_id;


// left join 
select * from student as s
left join course as c
on s.student_id = c.student_id;


// right join
select * from student as s
right join course as c
on s.student_id = c.student_id;


// full join
select * from student as a
left join course as b
on a.id = b.id
union
select * from student as a
right join course as b
on a.id = b.id;


// left exclusive join
select * from student as a
left join course as b
on a.id = b.id
where b.id is null;


// right exclusive join
select * from student as a
right join course as b
on a.id = b.id
where a.id is null;
