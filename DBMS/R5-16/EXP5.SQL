/*PROGRAM 5*/
SET SERVEROUTPUT ON;
DECLARE
N NUMBER:=1;
PRO NUMBER:=1;
BEGIN
WHILE N<=10 LOOP
PRO:=N*3;
DBMS_OUTPUT.PUT_LINE('3  *'||N||' = '|| PRO);
N:=N+1;
END LOOP;
END;
/

/*OUTPUT

3  *1 = 3
3  *2 = 6
3  *3 = 9
3  *4 = 12
3  *5 = 15
3  *6 = 18
3  *7 = 21
3  *8 = 24
3  *9 = 27
3  *10 = 30

PL/SQL procedure successfully completed.
*/ 