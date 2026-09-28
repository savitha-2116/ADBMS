declare
    n number := &n;
    temp number;
    rev number := 0;
    rem number;
begin
    temp := n;

    while temp > 0 loop
        rem := mod(temp, 10);
        rev := rev * 10 + rem;
        temp := trunc(temp / 10);
    end loop;

    if n = rev then
        dbms_output.put_line('palindrome');
    else
        dbms_output.put_line('not palindrome');
    end if;
end;
