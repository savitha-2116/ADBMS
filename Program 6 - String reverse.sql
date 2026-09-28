declare
    str varchar2(100) := '&str';
    rev varchar2(100) := '';
begin
    for i in reverse 1..length(str) loop
        rev := rev || substr(str, i, 1);
    end loop;

    dbms_output.put_line('reverse = ' || rev);
end;
