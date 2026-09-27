declare
    n number := &n;
    sum number := 0;
begin
    for i in 1..n loop
        sum := sum + i;
    end loop;

    dbms_output.put_line('sum = ' || sum);
end;
-- how to run:
-- 1. github → code → codespaces → open "fuzzy-spoon".
-- 2. open this sql file from the explorer on the left.
-- 3. open the terminal at the bottom.
-- 4. type: docker exec -it oracle-db sqlplus system/Oracle123@localhost/FREE
-- 5. when sql> appears, copy and paste the commands from this file.
-- 6. press enter to run the commands.
