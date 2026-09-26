--Primary Key
alter table students add constraint pk_students primary key (student_id);
--Unique Key
alter table students add constraint uq_students_name unique (student_name);
--Foreign Key
create table department (department_id number primary key, department_name varchar2(50));

insert into department values (1, 'computer science');

insert into department values (2, 'information technology');
