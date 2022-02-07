/*EXP 12 PG10*/
SET SERVEROUTPUT ON;
DECLARE
    n   NUMBER;
    s number;
    c number;

    FUNCTION square_fn(n NUMBER)
        RETURN NUMBER IS
        sqr NUMBER;
    BEGIN
        RETURN power(n,1/2);
    END;

    FUNCTION cube_fn(n NUMBER)
        RETURN NUMBER IS
        cub NUMBER;
    BEGIN
        RETURN power(n,1/3);
    END;

BEGIN
    n := &n;
    s := square_fn(n);
    c := cube_fn(n);
    INSERT INTO test VALUES (n, s, c);
END;
/
/*OUTPUT
SQL> @pg18
Enter value for n: 9
old  21:     n := &n;
new  21:     n := 9;

PL/SQL procedure successfully completed.

SQL> select * from test;

     VALUE     SQUARE       CUBE
---------- ---------- ----------
         9          3 2.08008382
*/