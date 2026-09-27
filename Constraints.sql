-- create first table

create table department (dept_id number, dept_name varchar2(30));

-- create second table

create table student (student_id number, student_name varchar2(30), dept_id number);

-- primary key

alter table department add constraint pk_department primary key (dept_id);

-- unique key

alter table department add constraint uq_department_name unique (dept_name);

-- foreign key

alter table student add constraint fk_student_department foreign key (dept_id) references department(dept_id);

-- insert records

insert into department values (1, 'computer science');
insert into department values (2, 'information technology');

insert into student values (101, 'savitha', 1);
insert into student values (102, 'priya', 1);
insert into student values (103, 'gaja', 2);

-- display records

select * from department;
select * from student;
