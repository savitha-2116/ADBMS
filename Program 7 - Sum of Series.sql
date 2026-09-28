declare
    n number := &n;
    sum number := 0;
begin
    for i in 1..n loop
        sum := sum + i;
    end loop;

    dbms_output.put_line('sum = ' || sum);
end;
