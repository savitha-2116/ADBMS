declare
    n number := &n;
    count number := 0;
begin
    for i in 1..n loop
        if mod(n, i) = 0 then
            count := count + 1;
        end if;
    end loop;

    if count = 2 then
        dbms_output.put_line('prime number');
    else
        dbms_output.put_line('not a prime number');
    end if;
end;
