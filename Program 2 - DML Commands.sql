--Insert
insert into students values (1, 'savitha', 'computer science');

insert into students values (2, 'priya', 'computer science');

select * from students;
--Update
update students set department = 'information technology' where student_id = 2;

select * from students;
--Delete
delete from students where student_id = 2;

select * from students;
