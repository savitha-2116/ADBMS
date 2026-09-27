-- create first table

create table student_sub (student_id number, student_name varchar2(30), dept_id number, mark number);

-- create second table

create table department_sub (dept_id number, dept_name varchar2(30));

-- insert records

insert into student_sub values (101, 'savitha', 1, 85);
insert into student_sub values (102, 'priya', 1, 90);
insert into student_sub values (103, 'gaja', 2, 75);
insert into student_sub values (104, 'bavana', 2, 80);
insert into student_sub values (105, 'raji', 3, 95);

insert into department_sub values (1, 'computer science');
insert into department_sub values (2, 'information technology');
insert into department_sub values (3, 'artificial intelligence');

-- in

select student_name, mark from student_sub where dept_id in (select dept_id from department_sub where dept_name = 'computer science');

-- where

select student_name, mark from student_sub where mark > (select avg(mark) from student_sub);

-- group by

select dept_id, count(*) as total_students from student_sub where dept_id in (select dept_id from department_sub) group by dept_id;

-- having

select dept_id, avg(mark) as average_mark from student_sub group by dept_id having avg(mark) > (select avg(mark)from student_sub);

-- order by

select student_name, mark from student_sub where mark > (select avg(mark) from student_sub) order by mark desc;

-- between

select student_name, mark from student_sub where mark between (select min(mark)from student_sub) and (select avg(mark) from student_sub);
