declare
    a number := &a;
    b number := &b;
    choice number := &choice;
begin
    if choice = 1 then
        dbms_output.put_line('addition = ' || (a + b));

    elsif choice = 2 then
        dbms_output.put_line('subtraction = ' || (a - b));

    elsif choice = 3 then
        dbms_output.put_line('multiplication = ' || (a * b));

    elsif choice = 4 then
        dbms_output.put_line('division = ' || (a / b));

    elsif choice = 5 then
        dbms_output.put_line('modulus = ' || mod(a, b));

    elsif choice = 6 then
        if a > b then
            dbms_output.put_line('a is greater');
        else
            dbms_output.put_line('b is greater or equal');
        end if;

    elsif choice = 7 then
        if a = b then
            dbms_output.put_line('both are equal');
        else
            dbms_output.put_line('both are not equal');
        end if;

    else
        dbms_output.put_line('invalid choice');
    end if;
end;
