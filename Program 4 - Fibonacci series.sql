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
