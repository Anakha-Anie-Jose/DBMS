/*EXP 12 PG1*/
SET SERVEROUTPUT ON;
DECLARE
    a number;
    b number;
    c number;

    PROCEDURE findMin(x IN number, y IN number, z OUT number) IS
    BEGIN
        IF x < y THEN
            z := x;
        ELSE
            z := y;
        END IF;
    END;

BEGIN
    a := &a;
    b := &b;
    findMin(a, b, c);
    DBMS_OUTPUT.PUT_LINE('MINIMUM OF '||a||' AND '||b||' IS '||c);
END;
/
/*OUTPUT
SQL> @PG9
Enter value for a: 3
old  16:     a := &a;
new  16:     a := 3;
Enter value for b: 7
old  17:     b := &b;
new  17:     b := 7;
MINIMUM OF 3 AND 7 IS 3

PL/SQL procedure successfully completed.*/