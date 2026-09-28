declare
    n number := &n;
    temp number;
    rem number;
    sum number := 0;
begin
    temp := n;

    while temp > 0 loop
        rem := mod(temp, 10);
        sum := sum + rem * rem * rem;
        temp := trunc(temp / 10);
    end loop;

    if sum = n then
        dbms_output.put_line('armstrong number');
    else
        dbms_output.put_line('not an armstrong number');
    end if;
end;
