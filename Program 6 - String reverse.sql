declare
    str varchar2(100) := '&str';
    rev varchar2(100) := '';
begin
    for i in reverse 1..length(str) loop
        rev := rev || substr(str, i, 1);
    end loop;

    dbms_output.put_line('reverse = ' || rev);
end;
-- how to run:
-- 1. github → code → codespaces → open "fuzzy-spoon".
-- 2. open this sql file from the explorer on the left.
-- 3. open the terminal at the bottom.
-- 4. type: docker exec -it oracle-db sqlplus system/Oracle123@localhost/FREE
-- 5. when sql> appears, copy and paste the commands from this file.
-- 6. press enter to run the commands.
