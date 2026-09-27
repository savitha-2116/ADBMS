declare
    n number := &n;
    a number := 0;
    b number := 1;
    c number;
begin
    for i in 1..n loop
        dbms_output.put(a || ' ');
        c := a + b;
        a := b;
        b := c;
    end loop;
    dbms_output.new_line;
end;
/
-- how to run:
-- 1. github → code → codespaces → open "opulent guacamole".
-- 2. open this sql file from the explorer on the left.
-- 3. open the terminal at the bottom.
-- 4. type: docker exec -it oracle-db sqlplus system/Oracle123@localhost/FREE
-- 5. when sql> appears, copy and paste the commands from this file.
-- 6. press enter to run the commands.
