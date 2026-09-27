-- aggregate functions

-- create table

create table marks (student_id number, student_name varchar2(30), mark number);

-- insert records

insert into marks values (101, 'savitha', 85);
insert into marks values (102, 'priya', 90);
insert into marks values (103, 'gaja', 75);
insert into marks values (104, 'bavana', 80);
insert into marks values (105, 'raji', 95);

-- sum

select sum(mark) as total_marks from marks;

-- count

select count(mark) as total_students from marks;

-- max

select max(mark) as highest_mark from marks;

-- min

select min(mark) as lowest_mark from marks;

-- avg

select avg(mark) as average_mark from marks;
