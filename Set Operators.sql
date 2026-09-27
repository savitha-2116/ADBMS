-- create first table

create table student_a (student_id number, student_name varchar2(30));

-- create second table

create table student_b (student_id number, student_name varchar2(30));

-- insert records into first table

insert into student_a values (101, 'savitha');
insert into student_a values (102, 'priya');
insert into student_a values (103, 'gaja');

-- insert records into second table

insert into student_b values (102, 'priya');
insert into student_b values (103, 'gaja');
insert into student_b values (104, 'bavana');

-- union

select * from student_a union select * from student_b;

-- union all

select * from student_a union all select * from student_b;

-- minus

select * from student_a minus select * from student_b;

-- intersect

select * from student_a intersect select * from student_b;
