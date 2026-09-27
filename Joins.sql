-- create first table

create table student_join (student_id number, student_name varchar2(30), dept_id number);

-- create second table

create table department_join (dept_id number, dept_name varchar2(30));

-- insert records

insert into student_join values (101, 'savitha', 1);
insert into student_join values (102, 'priya', 2);
insert into student_join values (103, 'gaja', 3);
insert into student_join values (104, 'bavana', 4);

insert into department_join values (1, 'computer science');
insert into department_join values (2, 'information technology');
insert into department_join values (3, 'artificial intelligence');
insert into department_join values (5, 'data science');

-- display tables

select * from student_join;
select * from department_join;

-- inner join

select student_join.student_id, student_join.student_name, department_join.dept_name from student_join inner join department_join on student_join.dept_id = department_join.dept_id;

-- left outer join

select student_join.student_id, student_join.student_name, department_join.dept_name from student_join left outer join department_join on student_join.dept_id = department_join.dept_id;

-- right outer join

select student_join.student_id, student_join.student_name, department_join.dept_name from student_join right outer join department_join on student_join.dept_id = department_join.dept_id;

-- cross join

select student_join.student_name, department_join.dept_name from student_join cross join department_join;

-- natural join

select student_id, student_name, dept_id, dept_name from student_join natural join department_join;
