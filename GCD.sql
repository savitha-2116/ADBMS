-- gcd of two numbers
declare
    a number := &a;
    b number := &b;
    temp number;
begin
    while b != 0 loop
        temp := mod(a, b);
        a := b;
        b := temp;
    end loop;

    dbms_output.put_line('gcd = ' || a);
end;
