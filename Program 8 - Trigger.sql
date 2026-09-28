-- trigger

create table voter (vid number(10), vname varchar2(20), vcity varchar2(20));

-- insert records

insert into voter values (20001, 'savitha', 'pondy');
insert into voter values (40001, 'priya', 'villupuram');
insert into voter values (20002, 'gaja', 'chennai');
insert into voter values (50005, 'bavana', 'puducherry');
insert into voter values (50006, 'raji', 'perambai');

select * from voter;

-- create trigger

create or replace trigger tdel 
after update or delete on voter
declare
    vmsg varchar2(20) := 'trigger fired';
begin
    if updating then
        dbms_output.put_line(vmsg || ' record updated');
    elsif deleting then
        dbms_output.put_line(vmsg || ' record deleted');
    end if;
end tdel;
/

-- delete record

delete from voter where vid = 20001;

-- update record

update voter set vcity = 'trichy' where vid = 50005;

